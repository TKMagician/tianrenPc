package com.tianren.service.impl;

import com.tianren.bean.Result;
import com.tianren.bean.SensorData;
import com.tianren.dao.SensorDataMapper;
import com.tianren.service.GasTankService;
import com.tianren.utils.EmptyUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service("gasTankService")
public class GasTankServiceImpl implements GasTankService {
    @Resource
    SensorDataMapper sensorDataMapper;

    private String queryFields  = "s29, s30, s31, s32, s33, s34, s35, s36";

    @Override
    public Result<List<SensorData>> getGasTankData(int startNum, int endNum) {
        try {
            List<SensorData> sensorDatas = sensorDataMapper.selectItemByLimit(queryFields, startNum, endNum);
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
    public Result<List<SensorData>> getGasTankByTime(String startTime, String endTime) {
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
}
