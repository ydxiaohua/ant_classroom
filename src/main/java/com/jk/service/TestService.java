package com.jk.service;

import com.jk.model.Share;
import com.jk.model.User;

import java.util.List;




public interface TestService {

    List<User> query();

    List<Share> sharelist(String qiandata, String hodata);
}
