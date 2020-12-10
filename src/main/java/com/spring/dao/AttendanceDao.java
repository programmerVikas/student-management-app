/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.dao;

import com.spring.entity.Attendance;
import com.spring.entity.SignUp;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class AttendanceDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public void saveUser(Attendance attendance) {
        this.hibernateTemplate.save(attendance);
    }

    public List<Attendance> getAllAttendanceValue() {
        return this.hibernateTemplate.loadAll(Attendance.class);
    }

    @Transactional
    public void deleteData(int id) {
        Attendance sign = this.hibernateTemplate.load(Attendance.class, id);
        this.hibernateTemplate.delete(sign);
    }
    
      public Attendance getSingleData(int uId){
       return this.hibernateTemplate.get(Attendance.class, uId);
    }
    
     @Transactional
    public void updateData(Attendance attendance){
        this.hibernateTemplate.update(attendance);
    }

}
