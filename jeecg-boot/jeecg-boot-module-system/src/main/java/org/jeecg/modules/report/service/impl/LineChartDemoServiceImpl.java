package org.jeecg.modules.report.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.jeecg.modules.report.entity.LineChartDemo;
import org.jeecg.modules.report.mapper.LineChartDemoMapper;
import org.jeecg.modules.report.service.ILineChartDemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LineChartDemoServiceImpl extends ServiceImpl<LineChartDemoMapper,LineChartDemo> implements ILineChartDemoService {

    @Autowired
    private LineChartDemoMapper lineChartDemoMapper;

    @Override
    public List<LineChartDemo> findClickDownload() {
        return lineChartDemoMapper.findClickDownload();
    }
}
