package com.miniblog.controller;

import com.miniblog.common.result.Result;
import com.miniblog.service.ISystemService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@Api(tags = "系统模块接口")
@RestController
@RequestMapping("/system")
@RequiredArgsConstructor
public class SystemController {
    private final ISystemService systemService;

    @ApiOperation("获取系统字典列表")
    @GetMapping("/list")
    public Result list(){
        return Result.success(systemService.list());
    }
}
