package org.jeecg.modules.report.service;

import org.jeecg.modules.report.entity.LineChartDemo;

import java.util.List;

public interface ILineChartDemoService {
    List<LineChartDemo> findClickDownload();
}
