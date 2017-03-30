package com.wynne.Entity;

public class Chart {
    private Integer chartId;

    private String chartCetId;

    private Integer chartPart1;

    private Integer chartPart2;

    private Integer chartPart3;

    private Integer chartPart4;

    private String chartUsername;

    public Integer getChartId() {
        return chartId;
    }

    public void setChartId(Integer chartId) {
        this.chartId = chartId;
    }

    public String getChartCetId() {
        return chartCetId;
    }

    public void setChartCetId(String chartCetId) {
        this.chartCetId = chartCetId == null ? null : chartCetId.trim();
    }

    public Integer getChartPart1() {
        return chartPart1;
    }

    public void setChartPart1(Integer chartPart1) {
        this.chartPart1 = chartPart1;
    }

    public Integer getChartPart2() {
        return chartPart2;
    }

    public void setChartPart2(Integer chartPart2) {
        this.chartPart2 = chartPart2;
    }

    public Integer getChartPart3() {
        return chartPart3;
    }

    public void setChartPart3(Integer chartPart3) {
        this.chartPart3 = chartPart3;
    }

    public Integer getChartPart4() {
        return chartPart4;
    }

    public void setChartPart4(Integer chartPart4) {
        this.chartPart4 = chartPart4;
    }

    public String getChartUsername() {
        return chartUsername;
    }

    public void setChartUsername(String chartUsername) {
        this.chartUsername = chartUsername == null ? null : chartUsername.trim();
    }
}