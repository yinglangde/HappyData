package org.jeecg.modules.report.service;

import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.report.entity.RptAdDemoDaily;

import java.util.List;

public interface IRptAdDemoDailyService extends IService<RptAdDemoDaily> {
    List<RptAdDemoDaily> findAll();
    List<RptAdDemoDaily> findOneDayAll(String dt);
}
