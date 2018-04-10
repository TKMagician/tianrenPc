package com.tianren.dao;

import com.tianren.bean.AnaerobicTank;

public interface AnaerobicTankMapper {
    int deleteByPrimaryKey(Integer anaerobicTankId);

    int insert(AnaerobicTank record);

    int insertSelective(AnaerobicTank record);

    AnaerobicTank selectByPrimaryKey(Integer anaerobicTankId);

    int updateByPrimaryKeySelective(AnaerobicTank record);

    int updateByPrimaryKey(AnaerobicTank record);
}