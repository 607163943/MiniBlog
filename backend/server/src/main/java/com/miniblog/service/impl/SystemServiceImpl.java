package com.miniblog.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.miniblog.mapper.SystemMapper;
import com.miniblog.pojo.po.SysDict;
import com.miniblog.service.ISystemService;
import org.springframework.stereotype.Service;

@Service
public class SystemServiceImpl extends ServiceImpl<SystemMapper, SysDict> implements ISystemService {
}
