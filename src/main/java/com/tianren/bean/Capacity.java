package com.tianren.bean;

import java.util.Date;

public class Capacity {
    private Integer id;

    private Integer gasProduction;

    private Integer powerGeneration;

    private Integer entryType;

    private Date entryTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGasProduction() {
        return gasProduction;
    }

    public void setGasProduction(Integer gasProduction) {
        this.gasProduction = gasProduction;
    }

    public Integer getPowerGeneration() {
        return powerGeneration;
    }

    public void setPowerGeneration(Integer powerGeneration) {
        this.powerGeneration = powerGeneration;
    }

    public Integer getEntryType() {
        return entryType;
    }

    public void setEntryType(Integer entryType) {
        this.entryType = entryType;
    }

    public Date getEntryTime() {
        return entryTime;
    }

    public void setEntryTime(Date entryTime) {
        this.entryTime = entryTime;
    }
}