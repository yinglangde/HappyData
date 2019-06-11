package org.jeecg.modules.report.service;


import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.report.entity.RptAdDaily;

import java.util.List;

public interface IRptAdDailyService extends IService<RptAdDaily> {
    List<RptAdDaily> findAll();
}
