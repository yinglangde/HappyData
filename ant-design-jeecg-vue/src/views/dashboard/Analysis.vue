<template>
  <div class="page-header-index-wide">
    <a-row :gutter="12">
      <a-col :xl="12" :lg="24" :md="24" :sm="24" :xs="24">
        <a-card :loading="loading" :bordered="false" title="实时访问统计" :style="{ marginTop: '24px' }">
          <a-dropdown :trigger="['click']" placement="bottomLeft" slot="extra">
            <a class="ant-dropdown-link" href="#">
              <a-icon type="ellipsis" />
            </a>
            <a-menu slot="overlay">
              <a-menu-item>
                <a href="javascript:;">操作一</a>
              </a-menu-item>
              <a-menu-item>
                <a href="javascript:;">操作二</a>
              </a-menu-item>
            </a-menu>
          </a-dropdown>
          <div style="height: 105px">
            <a-row>
              <a-col :span="8">
                <div class="head-info" :class="center && 'center'">
                  <span>今日IP</span>
                  <p><a>{{ loginfo.todayIp }}</a></p>
                </div>
              </a-col>
              <a-col :span="8">
                <div class="head-info" :class="center && 'center'">
                  <span>今日访问</span>
                  <p><a>{{ loginfo.todayVisitCount }}</a></p>
                </div>
              </a-col>
              <a-col :span="8">
                <div class="head-info" :class="center && 'center'">
                  <span>访问总览</span>
                  <p><a>{{ loginfo.totalVisitCount }}</a></p>
                </div>
              </a-col>
            </a-row>
          </div>
        </a-card>
      </a-col>
    </a-row>

    <a-table :columns="columns" :dataSource="sysLogList" bordered pagination="false">
      <template slot="name" slot-scope="text">
        <a href="javascript:;">{{text}}</a>
      </template>
      <template slot="title" slot-scope="currentPageData">
        <b>您的访问历史:</b>
      </template>
    </a-table>
  </div>
</template>

<script>
  const columns = [{
    title: '访问时间',
    dataIndex: 'createTime',
    // scopedSlots: { customRender: 'name' },
    width: 400
  }, {
    title: '登录ip',
    dataIndex: 'ip',
  }];


  import ChartCard from '@/components/ChartCard'
  import ACol from "ant-design-vue/es/grid/Col"
  import ATooltip from "ant-design-vue/es/tooltip/Tooltip"

  import {getLoginfo} from '@/api/api'

  export default {
    name: "Analysis",
    components: {
      ATooltip,
      ACol,
      ChartCard
    },
    data() {
      return {
        loading: true,
        center: null,
        loginfo:{},
        sysLogList:[],
        columns
      }
    },
    created() {
      setTimeout(() => {
        this.loading = !this.loading
      }, 1000)
      this.initLogInfo();
    },
    methods: {
      initLogInfo () {
        getLoginfo(null).then((res)=>{
          if(res.success){
            this.loginfo = res.result;
            this.sysLogList = res.result.sysLogList
          }
        })
      },
    }
  }
</script>

<style lang="scss" scoped>
  .extra-wrapper {
    line-height: 55px;
    padding-right: 24px;

    .extra-item {
      display: inline-block;
      margin-right: 24px;

      a {
        margin-left: 24px;
      }
    }
  }

  /* 首页访问量统计 */
  .head-info {
    position: relative;
    text-align: left;
    padding: 0 32px 0 0;
    min-width: 125px;

    &.center {
      text-align: center;
      padding: 0 32px;
    }

    span {
      color: rgba(0, 0, 0, .45);
      display: inline-block;
      font-size: .95rem;
      line-height: 42px;
      margin-bottom: 4px;
    }
    p {
      line-height: 42px;
      margin: 0;
      a {
        font-weight: 600;
        font-size: 1rem;
      }
    }
  }
</style>