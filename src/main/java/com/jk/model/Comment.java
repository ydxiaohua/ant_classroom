package com.jk.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.io.Serializable;

@Document(collection="pinglun")
public class Comment implements Serializable {
    private static final long serialVersionUID = 7306508843024901955L;

    private Integer comid;
    private String comcontent;
    private String comdate;
    private Integer comcode;
    private Integer courseid;

    public Integer getComid() {
        return comid;
    }

    public void setComid(Integer comid) {
        this.comid = comid;
    }

    public String getComcontent() {
        return comcontent;
    }

    public void setComcontent(String comcontent) {
        this.comcontent = comcontent;
    }

    public String getComdate() {
        return comdate;
    }

    public void setComdate(String comdate) {
        this.comdate = comdate;
    }

    public Integer getComcode() {
        return comcode;
    }

    public void setComcode(Integer comcode) {
        this.comcode = comcode;
    }

    public Integer getCourseid() {
        return courseid;
    }

    public void setCourseid(Integer courseid) {
        this.courseid = courseid;
    }

    @Override
    public String toString() {
        return "comment{" +
                "comid=" + comid +
                ", comcontent='" + comcontent + '\'' +
                ", comdate='" + comdate + '\'' +
                ", comcode=" + comcode +
                ", courseid=" + courseid +
                '}';
    }
}
