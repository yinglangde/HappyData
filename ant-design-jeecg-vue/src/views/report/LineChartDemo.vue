<template>
  <div>
    <v-chart :force-fit="true" :height="height" :data="data" :scale="scale">
      <v-tooltip />
      <v-axis />
      <v-legend />
      <v-line position="hour*summary" color="ind" />
      <v-point position="hour*summary" color="ind" :size="4" :v-style="style" :shape="'circle'" />
    </v-chart>
  </div>
</template>

<script>
  import {getAction} from '@/api/manage'

  const DataSet = require('@antv/data-set');

  // const sourceData = [];
  // const sourceData = [{hour:"00", clickNum:72472, downloadNum:26845}
  //   , {hour:"01", clickNum:37602, downloadNum:9712}
  //   , {hour:"02", clickNum:27898, downloadNum:6814}
  //   , {hour:"03", clickNum:28267, downloadNum:6364}
  //   , {hour:"04", clickNum:39528, downloadNum:7663}
  //   , {hour:"05", clickNum:72568, downloadNum:14361}
  //   , {hour:"06", clickNum:105833, downloadNum:24247}]
  //
  // const dv = new DataSet.View().source(sourceData);
  // dv.transform({
  //   type: 'fold',
  //   fields: ['clickNum', 'downloadNum'],
  //   key: 'ind',
  //   value: 'summary',
  // });
  // const data = dv.rows;

  let sourceData = [];
  const scale = [{
    dataKey: 'hour',
    min: 0,
    max: 1,
  }];

    export default {
      name: "LineChartDemo",
      data() {
        return {
          data:"",
          scale,
          height: 400,
          style: { stroke: '#fff', lineWidth: 1 },
          sourceData:[]
        };
      },

      methods: {
        getResult () {
          var url = "/report/lineChartDemo"
          getAction(url).then((res) => {
            if (res.success) {
              sourceData=res.result
              // console.log(this.sourceData)

              // let sourceData = [{hour:"00", clickNum:72472, downloadNum:26845}
              //   , {hour:"01", clickNum:37602, downloadNum:9712}
              //   , {hour:"02", clickNum:27898, downloadNum:6814}
              //   , {hour:"03", clickNum:28267, downloadNum:6364}
              //   , {hour:"04", clickNum:39528, downloadNum:7663}
              //   , {hour:"05", clickNum:72568, downloadNum:14361}
              //   , {hour:"06", clickNum:105833, downloadNum:24247}]

              let dv = new DataSet.View().source(sourceData);
              dv.transform({
                type: 'fold',
                fields: ['clickNum', 'downloadNum'],
                key: 'ind',
                value: 'summary',
              });
              this.data = dv.rows;
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