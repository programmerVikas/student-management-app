package com.spring.dao;

import com.spring.entity.SignUp;
//import com.spring.entity.UpdateSignUp;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class SignUpDao {
    
    @Autowired
    private HibernateTemplate hibernateTemplate;
    
    @Transactional
    public void saveUser(SignUp signUp){
        this.hibernateTemplate.save(signUp);
    }
    
    public List<SignUp> getAllData(){
       return this.hibernateTemplate.loadAll(SignUp.class);
    }
     @Transactional
    public void deleteData(int id){
       SignUp sign = this.hibernateTemplate.load(SignUp.class, id);
       this.hibernateTemplate.delete(sign);
    }
    
    public SignUp getSingleData(int uId){
       return this.hibernateTemplate.get(SignUp.class, uId);
    }
    
     @Transactional
    public void updateData(SignUp signUp){
        this.hibernateTemplate.update(signUp);
    }
    

    
}
