package com.tianren.service.impl;

import com.tianren.bean.ModuleConfig;
import com.tianren.bean.Result;
import com.tianren.bean.Sensor;
import com.tianren.bean.SensorData;
import com.tianren.dao.SensorDataMapper;
import com.tianren.dao.SensorMapper;
import com.tianren.service.CommonService;
import com.tianren.service.GasTankService;
import com.tianren.utils.EmptyUtils;
import com.tianren.utils.TimeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("commonService")
public class CommonServiceImpl implements CommonService {
    @Autowired
    SensorDataMapper sensorDataMapper;

    @Autowired
    SensorMapper sensorMapper;

    private String queryFields  = "s29, s30, s31, s32, s33, s34, s35, s36";

    @Override
    public Result<List<SensorData>> getSensorDataByNum(int startNum, int endNum) {
        try {
            List<SensorData> sensorDatas = sensorDataMapper.selectItemByLimit(queryFields, startNum, endNum);
            if (EmptyUtils.isEmpty(sensorDatas)) {
                return new Result(true, new ArrayList<SensorData>().add(new SensorData()), "查询结果为空");
            }
            List<SensorData> formatSensorDatas = new ArrayList<>();
            for (SensorData sensorData : sensorDatas) {
                sensorData.setAddFromatTime(TimeUtils.dateToStrLong(sensorData.getAddTime()));
                formatSensorDatas.add(sensorData);
            }
            //将日期格式化
            return new Result(true, formatSensorDatas, "查询成功");
        }
        catch (Exception e) {
            return new Result(false, null, "查询失败");
        }
    }

    @Override
    public Result<List<SensorData>> getSensorDataByTime(String startTime, String endTime) {
        try {
            List<SensorData> sensorDatas = sensorDataMapper.selectItemByTime(startTime, endTime);
            if (EmptyUtils.isEmpty(sensorDatas)) {
                return new Result(true, new ArrayList<SensorData>().add(new SensorData()), "查询结果为空");
            }
            return new Result(true, sensorDatas, "查询成功");
        }
        catch (Exception e) {
            return new Result(false, null, "查询失败");
        }
    }

    @Override
    public Result getSensor() {
        try {
            List<Sensor> sensors = sensorMapper.selectAll();
            return new Result(true, sensors, "查询成功");
        }
        catch (Exception e) {
            return new Result(false, null, "查询失败");
        }
    }

    @Override
    public Result getSensorResMap() {
        try {
            List<Sensor> sensors = sensorMapper.selectSensorResMap();
            Map<String, Sensor> sensorMap = new HashMap<>();
            for (Sensor sensor: sensors) {
                sensorMap.put(sensor.getSensorName(), sensor);
            }
            return new Result(true, sensorMap, "查询成功");
        }
        catch (Exception e) {
            return new Result(false, null, "查询失败");
        }
    }

    @Override
    public Result getDataConfig(String getConfigName) {
        ModuleConfig moduleConfig = new ModuleConfig();
        HashMap<String, List<String>> dataConfig = new HashMap<>();
        switch (getConfigName) {
            case "detailedData":
                dataConfig.putAll(moduleConfig.getDetailedData());
                break;
            case "anaerobicTank":
                dataConfig.putAll(moduleConfig.getAnaerobicTank());
                break;
            case "desulfurization":
                dataConfig.putAll(moduleConfig.getDesulfurizationConfig());
                break;
            case "decarburization":
                dataConfig.putAll(moduleConfig.getDecarburizationConfig());
                break;
            case "pretreatmentEqu":
                dataConfig.putAll(moduleConfig.getPretreatmentEquConfig());
                break;
            case "gasTank":
                dataConfig.putAll(moduleConfig.getGasTankNormalConfig());
                dataConfig.putAll(moduleConfig.getGasTankGasConfig());
                break;
            default:
                break;
        }
        return new Result(false, dataConfig, "");
    }

    @Override
    public Result getSensorResList() {
        try {
            List<Sensor> sensors = sensorMapper.selectSensorResMap();
            return new Result(true, sensors, "查询成功");
        }
        catch (Exception e) {
            return new Result(false, null, "查询失败");
        }
    }
}
