/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.services;

import com.spring.dao.MarksheetDao;
import com.spring.entity.Marksheet;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MarksheetServices {

    @Autowired
    private MarksheetDao marksheetDao;

    public void saveMarkData(Marksheet marksheet) {
        this.marksheetDao.saveMarkData(marksheet);
    }

    public List<Marksheet> getAllMarkValue() {
        return this.marksheetDao.getAllMarkData();
    }

    public void deleteMarkData(int id) {
        this.marksheetDao.deleteMarkData(id);
    }
    
        public Marksheet getSingleMarkData(int uId){
       return  this.marksheetDao.getSingleMarkData(uId);
    }
        
            public void updateMarkData(Marksheet marksheet){
        this.marksheetDao.updateMarkData(marksheet);
    }
    

}
