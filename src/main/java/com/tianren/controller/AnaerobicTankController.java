package com.tianren.controller;

import com.google.gson.Gson;
import com.tianren.bean.Result;
import com.tianren.bean.Sensor;
import com.tianren.bean.SensorData;
import com.tianren.service.CommonService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/anaerobicTank")
public class AnaerobicTankController {

    private Gson gson = new Gson();
    private int START_ITEM_NUM = 0;

    @Resource
    CommonService commonService;

    @RequestMapping("/getRealTimeData")
    public String getRealTimeData(HttpServletRequest request, HttpSession session) {
        Result<List<SensorData>> sensorDataRes = commonService.getSensorDataByNum(START_ITEM_NUM, 1);
        Result<Map<String, Sensor>> sensorRes = commonService.getSensorResMap();
        Result<Map<String, List<String>>> dataConfig = commonService.getDataConfig("anaerobicTank");
        if (!sensorDataRes.getResult() || !sensorRes.getResult()) {
            return null;//返回404--加在错误
        }
        request.setAttribute("realTimeData", sensorDataRes.getData().get(0));
        request.setAttribute("sensors", sensorRes.getData());
        request.setAttribute("dataConfig", dataConfig.getData());
        return "pages/anaerobicTank";
    }

    @ResponseBody
    @RequestMapping("/getChartData")
    public String entryCapacityData(HttpServletRequest request, HttpSession session) throws UnsupportedEncodingException {
        Result<Map<String, SensorData>> sensorDataRes =
                commonService.getSensorDataByTime(request.getParameter("startTime"), request.getParameter("endTime"));
        if (!sensorDataRes.getResult()) {
            return null;//返回404--加在错误
        }
        return gson.toJson(sensorDataRes.getData());
    }

}
