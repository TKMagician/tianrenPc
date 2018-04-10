package com.tianren.dao;

import com.tianren.bean.Capacity;

public interface CapacityMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Capacity record);

    int insertSelective(Capacity record);

    Capacity selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Capacity record);

    int updateByPrimaryKey(Capacity record);
}