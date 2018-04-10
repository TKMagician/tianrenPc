package com.tianren.service.impl;

import com.tianren.bean.AnaerobicTank;
import com.tianren.bean.Capacity;
import com.tianren.bean.Consumption;
import com.tianren.dao.AnaerobicTankMapper;
import com.tianren.dao.CapacityMapper;
import com.tianren.dao.ConsumptionMapper;
import com.tianren.service.EntryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("entryService")
public class EntryServiceImpl implements EntryService {
    private int AFFECTED_ROWS = 1;

    @Resource
    AnaerobicTankMapper anaerobicTankMapper;

    @Resource
    CapacityMapper capacityMapper;

    @Resource
    ConsumptionMapper consumptionMapper;

    @Override
    public Boolean entryAnaerobicTankData(AnaerobicTank anaerobicTankData) {
        try {
            int affectedRows = this.anaerobicTankMapper.insertSelective(anaerobicTankData);
            if (affectedRows != AFFECTED_ROWS) {
                return false;
            }
            return true;
        }
        catch (Exception e) {
            return false;
        }
    }

    @Override
    public Boolean entryCapacityData(Capacity capacityData) {
        try {
            int affectedRows = this.capacityMapper.insertSelective(capacityData);
            if (affectedRows != AFFECTED_ROWS) {
                return false;
            }
            return true;
        }
        catch (Exception e) {
            return false;
        }
    }

    @Override
    public Boolean entryConsumptionData(Consumption consumptionData) {
        try {
            int affectedRows = this.consumptionMapper.insertSelective(consumptionData);
            if (affectedRows != AFFECTED_ROWS) {
                return false;
            }
            return true;
        }
        catch (Exception e) {
            return false;
        }
    }
}
