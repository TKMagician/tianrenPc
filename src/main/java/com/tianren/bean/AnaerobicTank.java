package com.tianren.bean;

import java.util.Date;

public class AnaerobicTank {
    private Integer anaerobicTankId;

    private Integer equipmentId;

    private Double ph;

    private Double ts;

    private Double vs;

    private Double vfa;

    private Double alkalinity;

    private Double ammoniaNitrogen;

    private Double cod;

    private Date entryTime;

    public Integer getAnaerobicTankId() {
        return anaerobicTankId;
    }

    public void setAnaerobicTankId(Integer anaerobicTankId) {
        this.anaerobicTankId = anaerobicTankId;
    }

    public Integer getEquipmentId() {
        return equipmentId;
    }

    public void setEquipmentId(Integer equipmentId) {
        this.equipmentId = equipmentId;
    }

    public Double getPh() {
        return ph;
    }

    public void setPh(Double ph) {
        this.ph = ph;
    }

    public Double getTs() {
        return ts;
    }

    public void setTs(Double ts) {
        this.ts = ts;
    }

    public Double getVs() {
        return vs;
    }

    public void setVs(Double vs) {
        this.vs = vs;
    }

    public Double getVfa() {
        return vfa;
    }

    public void setVfa(Double vfa) {
        this.vfa = vfa;
    }

    public Double getAlkalinity() {
        return alkalinity;
    }

    public void setAlkalinity(Double alkalinity) {
        this.alkalinity = alkalinity;
    }

    public Double getAmmoniaNitrogen() {
        return ammoniaNitrogen;
    }

    public void setAmmoniaNitrogen(Double ammoniaNitrogen) {
        this.ammoniaNitrogen = ammoniaNitrogen;
    }

    public Double getCod() {
        return cod;
    }

    public void setCod(Double cod) {
        this.cod = cod;
    }

    public Date getEntryTime() {
        return entryTime;
    }

    public void setEntryTime(Date entryTime) {
        this.entryTime = entryTime;
    }
}