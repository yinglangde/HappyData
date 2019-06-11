package org.jeecg.modules.report.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.jeecg.modules.report.entity.RptAdDemoDaily;
import org.jeecg.modules.report.mapper.RptAdDemoDailyMapper;
import org.jeecg.modules.report.service.IRptAdDemoDailyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RptAdDemoDailyServiceImpl extends ServiceImpl<RptAdDemoDailyMapper, RptAdDemoDaily> implements IRptAdDemoDailyService {

    @Autowired
    private RptAdDemoDailyMapper rptAdDemoDailyMapper;

    @Override
    public List<RptAdDemoDaily> findAll() {
        return rptAdDemoDailyMapper.findAll();
    }

    @Override
    public List<RptAdDemoDaily> findOneDayAll(String dt) {
        return rptAdDemoDailyMapper.findOneDayAll(dt);
    }

}
