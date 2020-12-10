/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.services;

import com.spring.dao.FeeDao;
import com.spring.entity.FeeEntity;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FeeServices {

    @Autowired
    private FeeDao feeDao;

    public void saveData(FeeEntity feeEntity) {
        this.feeDao.saveFeeData(feeEntity);
    }

    public List<FeeEntity> getAllValue() {
        return this.feeDao.getAllData();
    }
    
     public void delete(int id){
        this.feeDao.deleteData(id);
    }
    
    public FeeEntity getSingleData(int uId){
       return  this.feeDao.getSingleData(uId);
    }
    
    public void updateData(FeeEntity feeEntity){
        this.feeDao.updateData(feeEntity);
    }
    
}
