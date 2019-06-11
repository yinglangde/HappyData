<template>
  <a-table :columns="columns" :dataSource="data" bordered :pagination="{ pageSize: 50 }" :scroll="{ z: 200,y: 700 }" />
</template>

<script>
  import {getAction} from '@/api/manage'

  const columns = [
    {
      title: '#',
      dataIndex: '',
      key: 'rowIndex',
      width: 60,
      align: "center",
      customRender: function (t, r, index) {
        return parseInt(index) + 1;
      }
    },
    { title: 'uarea', dataIndex: 'uarea', width: 150},
    { title: 'country', dataIndex: 'country', width: 150},
    { title: 'area', dataIndex: 'area', width: 150},
    { title: 'province', dataIndex: 'province', width: 150},
    { title: 'city', dataIndex: 'city', width: 150},
    { title: 'level', dataIndex: 'level', width: 100},
    { title: 'adcode', dataIndex: 'adcode', width: 150}
  ];

  const data = [];
  export default {
    name: "PrestoDemo",
    data() {
      return {
        data,
        columns,
      }
    },
    methods: {
      getResult () {
        var url = "/report/prestoDemo"
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

