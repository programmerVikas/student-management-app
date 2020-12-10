/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.services;

import com.spring.dao.SignUpDao;
import com.spring.entity.SignUp;
//import com.spring.entity.UpdateSignUp;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SignUpServices {
    
    @Autowired
    private SignUpDao signUpDao;
    
    public void saveData(SignUp signUp){
        this.signUpDao.saveUser(signUp);
    }
    
    public List<SignUp> getAllData(){
        return this.signUpDao.getAllData();
    }
    
    public void delete(int id){
        this.signUpDao.deleteData(id);
    }
    
    public SignUp getSingleData(int uId){
       return  this.signUpDao.getSingleData(uId);
    }
    
    public void updateData(SignUp signUp){
        this.signUpDao.updateData(signUp);
    }
    
    
}
