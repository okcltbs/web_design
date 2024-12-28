package com.example.spring_web_design.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PowerInfo {
    private int powerId;          // 自增主键
    private int promoteId;        // 宣传标识
    private int userId;           // 助力用户标识
    private String powerDescription;   // 助力描述
    private String photoOssId;     // 助力介绍图片
    private LocalDateTime createdTime; // 创建时间
    private LocalDateTime modifiedTime;// 修改时间
    private int status;            // 状态（0：待接受；1：同意；2：拒绝；3：取消）
}
