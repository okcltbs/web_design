package com.example.spring_web_design.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CountryInfo {
    private int countryId;  //自增主键
    private String countryName; //乡镇名称
    private String locatedCity; //所属城市
    private String locatedProvince; //所属省份
}
