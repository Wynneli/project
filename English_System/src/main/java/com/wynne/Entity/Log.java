package com.wynne.Entity;

public class Log {
    private Integer userid;

    private String username;

    private String useroperate;

    private String time;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getUseroperate() {
        return useroperate;
    }

    public void setUseroperate(String useroperate) {
        this.useroperate = useroperate == null ? null : useroperate.trim();
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time == null ? null : time.trim();
    }
}