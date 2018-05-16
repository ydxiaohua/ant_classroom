package com.jk.service;

import com.jk.model.Registrationcentre;

import java.util.List;

/**
 * Created by ASUS on 2018/5/15.
 */
public interface BaomingService {
    void addBaoUser();

    List<Registrationcentre> querybaolist();
}
