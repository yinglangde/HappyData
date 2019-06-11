package org.jeecg.modules.report.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("rpt_ad_daily")
public class RptAdDaily {
    public static final long serialVersionUID = 1L;

    @TableId(type = IdType.UUID)
    private String id;
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

