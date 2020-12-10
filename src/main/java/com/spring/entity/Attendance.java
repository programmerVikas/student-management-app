/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Attendance {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String subject;
    private String student_name;
    private String student_roll;
    private String present_date;
    private String student_prn;
    private String student_status;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getStudent_name() {
        return student_name;
    }

    public void setStudent_name(String student_name) {
        this.student_name = student_name;
    }

    public String getStudent_roll() {
        return student_roll;
    }

    public void setStudent_roll(String student_roll) {
        this.student_roll = student_roll;
    }

    public String getPresent_date() {
        return present_date;
    }

    public void setPresent_date(String present_date) {
        this.present_date = present_date;
    }

    public String getStudent_prn() {
        return student_prn;
    }

    public void setStudent_prn(String student_prn) {
        this.student_prn = student_prn;
    }

    public String getStudent_status() {
        return student_status;
    }

    public void setStudent_status(String student_status) {
        this.student_status = student_status;
    }

    public Attendance(int id, String subject, String student_name, String student_roll, String present_date, String student_prn, String student_status) {
        this.id = id;
        this.subject = subject;
        this.student_name = student_name;
        this.student_roll = student_roll;
        this.present_date = present_date;
        this.student_prn = student_prn;
        this.student_status = student_status;
    }

    public Attendance() {
    }

    @Override
    public String toString() {
        return "Attendance{" + "id=" + id + ", subject=" + subject + ", student_name=" + student_name + ", student_roll=" + student_roll + ", present_date=" + present_date + ", student_prn=" + student_prn + ", student_status=" + student_status + '}';
    }
    
    
    
    
}
