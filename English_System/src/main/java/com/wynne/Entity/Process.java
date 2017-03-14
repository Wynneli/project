package com.wynne.Entity;

public class Process {
    private Integer processId;

    private Integer pUserId;

    private String pCet4Id;

    private String pCet6Id;

    public Integer getProcessId() {
        return processId;
    }

    public void setProcessId(Integer processId) {
        this.processId = processId;
    }

    public Integer getpUserId() {
        return pUserId;
    }

    public void setpUserId(Integer pUserId) {
        this.pUserId = pUserId;
    }

    public String getpCet4Id() {
        return pCet4Id;
    }

    public void setpCet4Id(String pCet4Id) {
        this.pCet4Id = pCet4Id == null ? null : pCet4Id.trim();
    }

    public String getpCet6Id() {
        return pCet6Id;
    }

    public void setpCet6Id(String pCet6Id) {
        this.pCet6Id = pCet6Id == null ? null : pCet6Id.trim();
    }
}