
package com.jk.service;

import com.jk.model.Class;
import com.jk.model.Course;
import com.jk.model.DaGang;
import com.jk.model.Teacher;

import java.util.List;


public interface CourseService {
    List<Teacher> queryteacher();
    void addTeacher(Teacher teacher);
    void deleteteacher(String teacherid);
    Teacher queryteacherid(String teacherid);
    void updateteacher(Teacher teacher);



    List<Teacher> querydagang();
    void adddagang(DaGang dagang);
    void deletedagang(String dgid);
    DaGang querydgid(String dgid);
    void updatedagang(DaGang dagang);



    List<Course> querycourse();
    List<Class> queryclass();
    void addcourse(Course course);
    void deletecourse(String courseid);
}

