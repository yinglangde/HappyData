package org.jeecg.modules.report.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.jeecg.modules.report.entity.RptAdDaily;

import java.util.List;

public interface RptAdDailyMapper extends BaseMapper<RptAdDaily> {
    List<RptAdDaily> findAll();
}
