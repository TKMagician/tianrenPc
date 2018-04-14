package com.tianren.controller;

import com.google.gson.Gson;
import com.tianren.bean.*;
import com.tianren.service.CommonService;
import com.tianren.service.GasTankService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/gasTank")
public class GasTankController {

    private Gson gson = new Gson();
    private int START_ITEM_NUM = 0;

    @Resource
    CommonService commonService;

    @RequestMapping("/getRealTimeData")
    public String getRealTimeData(HttpServletRequest request, HttpSession session) {
        Result<List<SensorData>> sensorDataRes = commonService.getSensorDataByNum(START_ITEM_NUM, 1);
        Result<Map<String, Sensor>> sensorRes = commonService.getSensorResMap();
        Result<Map<String, List<String>>> dataConfig = commonService.getDataConfig("gasTank");
        if (!sensorDataRes.getResult() || !sensorRes.getResult()) {
            return null;//返回404--加在错误
        }
        request.setAttribute("realTimeData", sensorDataRes.getData().get(0));
        request.setAttribute("sensors", sensorRes.getData());
        request.setAttribute("dataConfig", dataConfig.getData());
        return "pages/gasTank";
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

    @ResponseBody
    @RequestMapping("/entryConsumptionData")
    public String entryConsumptionData(HttpServletRequest request, HttpSession session) {
        return null;
    }

}
