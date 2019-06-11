package org.jeecg.modules.report.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.jeecg.modules.report.entity.RptAdDaily;
import org.jeecg.modules.report.mapper.RptAdDailyMapper;
import org.jeecg.modules.report.service.IRptAdDailyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RptAdDailyServiceImpl extends ServiceImpl<RptAdDailyMapper,RptAdDaily> implements IRptAdDailyService {

    @Autowired
    private RptAdDailyMapper rptAdDailyMapper;

    @Override
    public List<RptAdDaily> findAll(){
        return rptAdDailyMapper.findAll();
    }

}
