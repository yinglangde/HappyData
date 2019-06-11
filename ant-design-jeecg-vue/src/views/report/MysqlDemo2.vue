<template>
  <a-table :columns="columns" :dataSource="data" bordered :pagination="{ pageSize: 20 }" />
</template>

<script>
  import {getAction} from '@/api/manage'

  const columns = [
    {
      title: '#',
      dataIndex: '',
      key: 'rowIndex',
      width: 55,
      align: "center",
      customRender: function (t, r, index) {
        return parseInt(index) + 1;
      }
    },
    { title: '日期', dataIndex: 'dt' ,align: "center",width:100},
    { title: '小时', dataIndex: 'hour',align: "center",width:40},
    { title: '广告代码', dataIndex: 'adcode',align: "center",width:90},
    { title: '请求量', dataIndex: 'requestNum',align: "center",width:120},
    { title: '填充量', dataIndex: 'fillNum',align: "center",width:110},
    { title: '下发量', dataIndex: 'dispatchNum',align: "center",width:110},
    { title: '曝光量', dataIndex: 'exposureNum',align: "center",width:110},
    { title: '日活', dataIndex: 'dau',align: "center",width:100},
    { title: '点击量', dataIndex: 'clickNum',align: "center",width:100},
    { title: '下载量', dataIndex: 'downloadNum',align: "center",width:88},
    { title: '下载完成量', dataIndex: 'finishDownloadNum',align: "center" ,width:100},
    { title: '安装量', dataIndex: 'installNum',align: "center",width:80}
  ];

  const data = [];
  export default {
    name: "MysqlDemo2",
    data() {
      return {
        data
        ,columns
      }
    },
    methods: {
      getResult () {
        var url = "/report/mysqlDemo2"
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