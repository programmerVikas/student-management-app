/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.dao;

import com.spring.entity.Marksheet;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class MarksheetDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public void saveMarkData(Marksheet marksheet) {
        this.hibernateTemplate.save(marksheet);
    }

    public List<Marksheet> getAllMarkData() {
        return this.hibernateTemplate.loadAll(Marksheet.class);
    }

    @Transactional
    public void deleteMarkData(int id) {
        Marksheet marksheet = this.hibernateTemplate.load(Marksheet.class, id);
        this.hibernateTemplate.delete(marksheet);
    }

    public Marksheet getSingleMarkData(int uId) {
        return this.hibernateTemplate.get(Marksheet.class, uId);
    }

    @Transactional
    public void updateMarkData(Marksheet marksheet) {
        this.hibernateTemplate.update(marksheet);
    }
    


}
