/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.services;

import com.spring.dao.SubjectDao;
import com.spring.entity.SubjectEntity;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SubjectServices {
    
    @Autowired
    private SubjectDao subjectDao;
    
    public void saveSubject(SubjectEntity subjectEntity){
        this.subjectDao.saveSubject(subjectEntity);
    }
    
    public List<SubjectEntity> getAllSubject(){
       return this.subjectDao.getAllSubject();
    }
    
    public void deleteData(int id){
        this.subjectDao.deleteData(id);
    }
    
    public SubjectEntity getSingleData(int id){
       return this.subjectDao.getSingleData(id);
    }
    
    public void getUpdate(SubjectEntity subjectEntity){
        this.subjectDao.getUpdate(subjectEntity);
    }
    
}
