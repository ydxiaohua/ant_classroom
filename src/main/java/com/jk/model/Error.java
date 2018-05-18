package com.jk.model;

import org.springframework.data.mongodb.core.mapping.Document;

import java.io.Serializable;

@Document(collection = "UserErr")
public class Error implements Serializable {

      private String errorvalue;

    public String getErrorvalue() {
        return errorvalue;
    }

    public void setErrorvalue(String errorvalue) {
        this.errorvalue = errorvalue;
    }


    @Override
    public String toString() {
        return "Error{" +
                "errorvalue='" + errorvalue + '\'' +
                '}';
    }
}
