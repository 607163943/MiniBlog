package com.miniblog.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.miniblog.pojo.po.SysDict;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SystemMapper extends BaseMapper<SysDict> {
}
