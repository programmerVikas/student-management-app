/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.dao;

import com.spring.entity.SubjectEntity;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Repository
public class SubjectDao {
    
    @Autowired
    private HibernateTemplate hibernateTemplate;
    
    @Transactional
    public void saveSubject(SubjectEntity subjectEntity){
        this.hibernateTemplate.save(subjectEntity);
    }
    
    public List<SubjectEntity> getAllSubject(){
       return this.hibernateTemplate.loadAll(SubjectEntity.class);
    }
    
    @Transactional
    public void deleteData(int id){
       SubjectEntity subjectEntity = this.hibernateTemplate.load(SubjectEntity.class, id);
       this.hibernateTemplate.delete(subjectEntity);
    }
    
  
    public SubjectEntity getSingleData(int id){
        return this.hibernateTemplate.get(SubjectEntity.class, id);
    }
    
    @Transactional
    public void getUpdate(SubjectEntity subjectEntity){
        this.hibernateTemplate.update(subjectEntity);
    }
    
}
