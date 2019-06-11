package org.jeecg.modules.report.controller;

import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.util.presto.PrestoSQL;
import org.jeecg.modules.report.entity.LineChartDemo;
import org.jeecg.modules.report.entity.RptAdDaily;
import org.jeecg.modules.report.entity.RptAdDemoDaily;
import org.jeecg.modules.report.service.ILineChartDemoService;
import org.jeecg.modules.report.service.IRptAdDailyService;
import org.jeecg.modules.report.service.IRptAdDemoDailyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/report")
@Slf4j
public class ReportTestController {

    @Autowired
    private IRptAdDailyService adDailyService;

    @Autowired
    private IRptAdDemoDailyService rptAdDemoDailyService;

    @Autowired
    private ILineChartDemoService iLineChartDemoService;

    /**
     * hello world
     */
    @GetMapping(value = "/hello")
    public Result<Object> hello() {
        Result<Object> result = new Result<Object>();
        result.setResult("Hello World!");
        result.setSuccess(true);
        return result;
    }


    /**
     * presto demo test
     * @return
     */
    @GetMapping(value = "/prestoDemo")
    public Result<Object> prestoDemo() {
        Result<Object> result = new Result<Object>();
        String sql="select * from dim_bobo.dim_bobo_uarea_city_level";
        List<Map<String, Object>> list = PrestoSQL.convertList(sql);
        result.setResult(list);
        result.setSuccess(true);
        return result;
    }

    /**
     *  mysql demo1
     */
    @GetMapping(value = "/mysqlDemo1")
    public Result<Object> mysqlDemo1(){
        Result<Object> result = new Result<Object>();
        List<RptAdDaily> list = adDailyService.findAll();
        result.setResult(list);
        result.setSuccess(true);
        return result;
    }

    /**
     *  mysql demo2
     */
    @GetMapping(value = "/mysqlDemo2")
    public Result<Object> mysqlDemo2(){
        Result<Object> result = new Result<Object>();
        List<RptAdDemoDaily> list = rptAdDemoDailyService.findAll();
        System.out.println(list);
        result.setResult(list);
        result.setSuccess(true);
        return result;
    }

    /**
     *
     */
    @GetMapping(value = "/lineChartDemo")
    public Result<Object> lineChartDemo(){
        Result<Object> result = new Result<Object>();
        List<LineChartDemo> list = iLineChartDemoService.findClickDownload();
        System.out.println(list);
        result.setResult(list);
        result.setSuccess(true);
        return result;
    }

}
