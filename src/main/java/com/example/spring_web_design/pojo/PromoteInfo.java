package com.example.spring_web_design.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PromoteInfo {
    private int promoteId;  //自增主键
    private int userId; //用户id
    private int countryId;  //乡镇id
    private String promoteType; //宣传类型（农家院、自然风光秀丽、古建筑、土特产、特色小吃、民俗活动等）
    private String promoteName; //宣传主题名称
    private String promoteDescription;  //宣传的描述
    private String photoOssId;  //图片介绍文件
    private String videoOssId;  //视频介绍文件

    private LocalDateTime createdTime;  //创建时间
    private LocalDateTime modifiedTime; //修改时间
    private int status; //状态（0已发布,1已取消）
}
