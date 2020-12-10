/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.services;

import com.spring.dao.AttendanceDao;
import com.spring.entity.Attendance;
import com.spring.entity.SignUp;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AttendanceServices {
    
    @Autowired
    private AttendanceDao attendanceDao;
    
     public void saveData(Attendance attendance){
        this.attendanceDao.saveUser(attendance);
    }
     
     public List<Attendance> getAllData(){
        return this.attendanceDao.getAllAttendanceValue();
    }
           
    public void deleteData(int id){
         this.attendanceDao.deleteData(id);   
    }
    
     public Attendance getSingleData(int uId){
       return this.attendanceDao.getSingleData(uId);
    }
    
    public void updateData(Attendance attendance){
        this.attendanceDao.updateData(attendance);
    }
    
}
