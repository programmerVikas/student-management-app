/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.dao;

import com.spring.entity.FeeEntity;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class FeeDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public void saveFeeData(FeeEntity feeEntity) {
        this.hibernateTemplate.save(feeEntity);
    }

    public List<FeeEntity> getAllData() {
        return this.hibernateTemplate.loadAll(FeeEntity.class);
    }

    @Transactional
    public void deleteData(int id) {
        FeeEntity feeEntity = this.hibernateTemplate.load(FeeEntity.class, id);
        this.hibernateTemplate.delete(feeEntity);
    }

    public FeeEntity getSingleData(int uId) {
        return this.hibernateTemplate.get(FeeEntity.class, uId);
    }

    @Transactional
    public void updateData(FeeEntity feeEntity) {
        this.hibernateTemplate.update(feeEntity);
    }

}
