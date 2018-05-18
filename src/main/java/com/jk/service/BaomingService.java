package com.jk.service;

import com.jk.model.People;
import com.jk.model.Registrationcentre;

import java.util.List;

/**
 * Created by ASUS on 2018/5/15.
 */
public interface BaomingService {
    void addBaoUser();

    List<Registrationcentre> querybaolist();

    void deletebaoming(String baouserid);

    Registrationcentre selectid(String baouserid);

    void updatebaoming(Registrationcentre registrationcentre);

    void addbaoming(Registrationcentre registrationcentre);

    void deletevipuser(String peopleid);

    List<People> queryvipuserlist(Integer phone, String peoplenickname, Integer peopleage);
}
