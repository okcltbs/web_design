package com.example.spring_web_design.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PowerSuccessInfo {
    private int promoteId;  //宣传标识
    private int promoteUserId;  //发布宣传用户标识
    private int powerId;    //助力标识
    private int powerUserId;    //助力用户标识
    private LocalDateTime createdTime;  //接受时间
}
