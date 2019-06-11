package org.jeecg.modules.report.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("rpt_ad_demo_daily")
public class RptAdDemoDaily {

    public static final long serialVersionUID = 1L;

    private String dt;
    private String hour;
    private Integer adcode;
    private Integer requestNum;

    private Integer fillNum;
    private Integer dispatchNum;
    private Integer exposureNum;
    private Integer dau;
    private Integer clickNum;
    private Integer downloadNum;
    private Integer finishDownloadNum;
    private Integer installNum;

}
