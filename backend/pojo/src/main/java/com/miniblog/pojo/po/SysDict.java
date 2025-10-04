package com.miniblog.pojo.po;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@ApiModel("字典表")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SysDict {
    @ApiModelProperty("id")
    private Long id;

    @ApiModelProperty("字典编码")
    private String code;

    @ApiModelProperty("字典名称")
    private String name;

    @ApiModelProperty("字典值")
    private String items;

    @ApiModelProperty("创建时间")
    private LocalDateTime createTime;

    @ApiModelProperty("修改时间")
    private LocalDateTime updateTime;
}
