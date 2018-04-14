package com.tianren.bean;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class ModuleConfig {
    private String moduleName;
    private List<String> moduleConfig;

    public String getModuleName() {
        return moduleName;
    }

    public void setModuleName(String moduleName) {
        this.moduleName = moduleName;
    }

    public List<String> getModuleConfig() {
        return moduleConfig;
    }

    public void setModuleConfig(List<String> moduleConfig) {
        this.moduleConfig = moduleConfig;
    }

    public HashMap<String, List<String>> getDetailedData() {
        //定义四个模块
        HashMap<String, List<String>> configHashMap = new HashMap<>();
        configHashMap.put("gasTank", getDetailedTankConfig());
        configHashMap.put("anaerobicTank", getDetailedAnaerobicTankConfig());
        configHashMap.put("decarburization", getDetailedDecarburizationConfig());
        configHashMap.put("desulfurization", getDetailedDesulfurizationConfig());
        return configHashMap;
    }

    public HashMap<String, List<String>> getAnaerobicTank() {
        //定义四个模块
        HashMap<String, List<String>> configHashMap = new HashMap<>();
        List<String> config = new ArrayList<>();
        config.add("d37");
        config.add("d38");
        config.add("d39");
        config.add("d40");
        config.add("d41");
        config.add("d42");
        config.add("d50");
        configHashMap.put("anaerobicTank", config);
        return configHashMap;
    }

    public HashMap<String, List<String>> getDesulfurizationConfig() {
        HashMap<String, List<String>> configHashMap = new HashMap<>();
        List<String> config = new ArrayList<>();
        config.add("d1");
        config.add("d2");
        config.add("d3");
        config.add("d4");
        config.add("d5");
        config.add("d6");
        config.add("d7");
        config.add("d8");
        config.add("d9");
        configHashMap.put("desulfurization", config);
        return configHashMap;
    }

    public HashMap<String, List<String>> getDecarburizationConfig() {
        HashMap<String, List<String>> configHashMap = new HashMap<>();
        List<String> config = new ArrayList<>();
        config.add("d10");
        config.add("d11");
        config.add("d12");
        config.add("d13");
        config.add("d14");
        config.add("d15");
        config.add("d16");
        config.add("d17");
        config.add("d18");
        config.add("d19");
        config.add("d20");
        configHashMap.put("decarburization", config);
        return configHashMap;
    }

    public HashMap<String, List<String>> getPretreatmentEquConfig() {
        HashMap<String, List<String>> configHashMap = new HashMap<>();
        List<String> config = new ArrayList<>();
        config.add("d21");
        config.add("d22");
        config.add("d23");
        config.add("d24");
        config.add("d25");
        config.add("d26");
        config.add("d27");
        config.add("d28");
        configHashMap.put("pretreatmentEqu", config);
        return configHashMap;
    }

    public HashMap<String, List<String>> getGasTankNormalConfig() {
        HashMap<String, List<String>> configHashMap = new HashMap<>();
        List<String> config = new ArrayList<>();
        config.add("d29");
        config.add("d30");
        config.add("d35");
        config.add("d36");
        configHashMap.put("gasTankNormal", config);
        return configHashMap;
    }

    public HashMap<String, List<String>> getGasTankGasConfig() {
        HashMap<String, List<String>> configHashMap = new HashMap<>();
        List<String> config = new ArrayList<>();
        config.add("d31");
        config.add("d32");
        config.add("d33");
        config.add("d34");
        configHashMap.put("gasTankGas", config);
        return configHashMap;
    }

    private List<String> getDetailedTankConfig() {
        List<String> config = new ArrayList<>();
        config.add("d31");
        config.add("d32");
        config.add("d33");
        config.add("d34");
        return config;
    }


    private List<String> getDetailedAnaerobicTankConfig() {
        List<String> config = new ArrayList<>();
        config.add("d37");
        config.add("d38");
        config.add("d43");
        config.add("d48");
        config.add("d49");
        return config;
    }

    //脱碳
    private List<String> getDetailedDecarburizationConfig() {
        List<String> config = new ArrayList<>();
        config.add("d1");
        config.add("d2");
        config.add("d3");
        return config;
    }

    //脱硫
    private List<String> getDetailedDesulfurizationConfig() {
        List<String> config = new ArrayList<>();
        config.add("d4");
        config.add("d5");
        config.add("d6");
        return config;
    }
}