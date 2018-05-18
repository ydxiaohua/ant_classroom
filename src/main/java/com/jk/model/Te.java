package com.jk.model;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "UserTe")
public class Te {


    private String name;

    private String  Ztid;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getZtid() {
        return Ztid;
    }

    public void setZtid(String ztid) {
        Ztid = ztid;
    }


    @Override
    public String toString() {
        return "Te{" +
                "name='" + name + '\'' +
                ", Ztid='" + Ztid + '\'' +
                '}';
    }
}
