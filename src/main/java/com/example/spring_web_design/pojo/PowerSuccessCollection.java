package com.example.spring_web_design.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PowerSuccessCollection {
    private String month;   //月份
    private String locate;  //地域
    private int countryId;  //乡镇标识
    private int promoteType;    //宣传类型

    private int totalPromoteNum;    //月累计宣传用户数
    private int totalPowerNum;  //月累计助力用户数
}
