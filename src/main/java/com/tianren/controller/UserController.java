package com.tianren.controller;

import com.google.gson.Gson;
import com.tianren.utils.CryptoUtils;
import com.tianren.utils.EmptyUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @RequestMapping("/login")
    public String showUserKey(HttpServletRequest request, HttpSession session) {
        return "pages/gasTank";
    }

    @RequestMapping("/detailedData")
    public String showDetailedData(HttpServletRequest request, HttpSession session) {
        return "pages/detailedData";
    }

    @RequestMapping("/statisticsData")
    public String showStatisticsData(HttpServletRequest request, HttpSession session) {
        return "pages/statisticsData";
    }
}
