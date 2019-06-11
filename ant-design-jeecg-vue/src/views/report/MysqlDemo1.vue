<template>
  <a-table :columns="columns" :dataSource="data" bordered :pagination="{ pageSize: 10 }" :scroll="{x:true  }" />
</template>

<script>
  import {getAction} from '@/api/manage'

  const data = [];
  export default {
    name: "MysqlDemo1",
    data() {
      return {
        data
        ,columns:[
          {
            title: '#',
            dataIndex: '',
            key: 'rowIndex',
            // width: 50,
            align: "center",
            customRender: function (t, r, index) {
              return parseInt(index) + 1;
            }
          },
          { title: 'id', dataIndex: 'id' ,align: "center"},
          { title: '日期', dataIndex: 'dt' ,align: "center"},
          { title: '小时', dataIndex: 'hour',align: "center"},
          { title: '广告代码', dataIndex: 'adcode',align: "center"},
          { title: '请求量', dataIndex: 'requestNum',align: "center"},
          { title: '填充量', dataIndex: 'fillNum',align: "center"},
          { title: '下发量', dataIndex: 'dispatchNum',align: "center"},
          { title: '曝光量', dataIndex: 'exposureNum',align: "center"},
          { title: '日活', dataIndex: 'dau',align: "center"},
          { title: '点击量', dataIndex: 'clickNum',align: "center"},
          { title: '下载量', dataIndex: 'downloadNum',align: "center"},
          { title: '下载完成量', dataIndex: 'finishDownloadNum',align: "center"},
          { title: '安装量', dataIndex: 'installNum',align: "center"}
        ]
      }
    },
    methods: {
      getResult () {
        var url = "/report/mysqlDemo1"
        getAction(url).then((res) => {
          if (res.success) {
            this.data = res.result;
          }
        })
      }
    },
    created() {
      this.getResult();
    }
  }

</script>

<style scoped>

</style>