package org.jeecg.modules.report.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.jeecg.modules.report.entity.RptAdDemoDaily;

import java.util.List;

public interface RptAdDemoDailyMapper extends BaseMapper<RptAdDemoDaily> {
    List<RptAdDemoDaily> findAll();
    List<RptAdDemoDaily> findOneDayAll(String dt);
}
