package org.jeecg.modules.report.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.jeecg.modules.report.entity.LineChartDemo;

import java.util.List;

public interface LineChartDemoMapper extends BaseMapper<LineChartDemo> {
    List<LineChartDemo> findClickDownload();
}
