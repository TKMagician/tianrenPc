package com.tianren.controller;

import com.ctc.wstx.util.DataUtil;
import com.google.gson.Gson;
import com.tianren.bean.AnaerobicTank;
import com.tianren.bean.Capacity;
import com.tianren.bean.Consumption;
import com.tianren.bean.Result;
import com.tianren.service.EntryService;
import com.tianren.utils.CryptoUtils;
import com.tianren.utils.EmptyUtils;
import com.tianren.utils.TimeUtils;
import javafx.scene.input.DataFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@Controller
@RequestMapping("/entry")
public class DataEntryController {
    Gson gson = new Gson();

    @Resource
    EntryService entryService;

    @ResponseBody
    @RequestMapping("/entryAnaerobicTankData")
    public String entryAnaerobicTankData(HttpServletRequest request, HttpSession session) {
        String jsonData = request.getParameter("anaerobicTankData");
        if (EmptyUtils.isEmpty(jsonData)) {
            return gson.toJson(new Result<String>(false, null, "数据信息为空"));
        }
        AnaerobicTank anaerobicTank = gson.fromJson(jsonData, AnaerobicTank.class);
        Boolean res = entryService.entryAnaerobicTankData(anaerobicTank);
        if (!res) {
            return gson.toJson(new Result<String>(res, null, "录入失败"));
        }
        return gson.toJson(new Result<String>(res, null, "录入成功"));
    }

    @ResponseBody
    @RequestMapping("/entryCapacity")
    public String entryCapacityData(HttpServletRequest request, HttpSession session) {
        String jsonData = request.getParameter("capacity");
        if (EmptyUtils.isEmpty(jsonData)) {
            return gson.toJson(new Result<String>(false, null, "数据信息为空"));
        }
        Capacity capacity = gson.fromJson(jsonData, Capacity.class);
        capacity.setEntryTime(TimeUtils.getNow());
        Boolean res = entryService.entryCapacityData(capacity);
        if (!res) {
            return gson.toJson(new Result<String>(res, null, "录入失败"));
        }
        return gson.toJson(new Result<String>(res, null, "录入成功"));
    }

    @ResponseBody
    @RequestMapping("/entryConsumptionData")
    public String entryConsumptionData(HttpServletRequest request, HttpSession session) {
        String jsonData = request.getParameter("consumption");
        if (EmptyUtils.isEmpty(jsonData)) {
            return gson.toJson(new Result<String>(false, null, "数据信息为空"));
        }
        Consumption consumption = gson.fromJson(jsonData, Consumption.class);
        consumption.setEntryTime(TimeUtils.getNow());
        Boolean res = entryService.entryConsumptionData(consumption);
        if (!res) {
            return gson.toJson(new Result<String>(res, null, "录入失败"));
        }
        return gson.toJson(new Result<String>(res, null, "录入成功"));
    }

}
