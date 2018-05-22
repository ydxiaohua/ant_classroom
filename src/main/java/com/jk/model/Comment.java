package com.jk.model;

import java.io.Serializable;

/**
 * Created by wfyf.zx1520 on 2018/5/21.
 */
public class Comment implements Serializable {
    private static final long serialVersionUID = -8003500683852308690L;
    /*comid	int
    comcontent	varchar
    comdate	varchar
    comcode	int
    courseid	int*/

    private Integer  comid;
    private String   comcontent;
    private String   comdate;
    private Integer  comcode;
    private Integer  courseid;


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


}
