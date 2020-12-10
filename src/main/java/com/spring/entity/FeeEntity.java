/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(uniqueConstraints = {
    @UniqueConstraint(columnNames = {"prn_no"})})
public class FeeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String student_name;
    @Column(unique = true)
    private String prn_no;
    private String semester;
    private String course_year;
    private String fee_date;
    private long recent_amount;
    private long total_amount;
    private long due_fee;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public long getDue_fee() {
        return due_fee;
    }

    public void setDue_fee(long due_fee) {
        this.due_fee = due_fee;
    }
    
    

    public String getStudent_name() {
        return student_name;
    }

    public void setStudent_name(String student_name) {
        this.student_name = student_name;
    }

    public String getPrn_no() {
        return prn_no;
    }

    public void setPrn_no(String prn_no) {
        this.prn_no = prn_no;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public String getCourse_year() {
        return course_year;
    }

    public void setCourse_year(String course_year) {
        this.course_year = course_year;
    }

    public String getFee_date() {
        return fee_date;
    }

    public void setFee_date(String fee_date) {
        this.fee_date = fee_date;
    }

    public long getRecent_amount() {
        return recent_amount;
    }

    public void setRecent_amount(long recent_amount) {
        this.recent_amount = recent_amount;
    }

    public long getTotal_amount() {
        return total_amount;
    }

    public void setTotal_amount(long total_amount) {
        this.total_amount = total_amount;
    }

    public FeeEntity(int id, String student_name, String prn_no, String semester, String course_year, String fee_date, long recent_amount, long total_amount, long due_fee) {
        this.id = id;
        this.student_name = student_name;
        this.prn_no = prn_no;
        this.semester = semester;
        this.course_year = course_year;
        this.fee_date = fee_date;
        this.recent_amount = recent_amount;
        this.total_amount = total_amount;
        this.due_fee = due_fee;
    }



    
    
    public FeeEntity() {
    }

    @Override
    public String toString() {
        return "FeeEntity{" + "id=" + id + ", student_name=" + student_name + ", prn_no=" + prn_no + ", semester=" + semester + ", course_year=" + course_year + ", fee_date=" + fee_date + ", recent_amount=" + recent_amount + ", total_amount=" + total_amount + ", due_fee=" + due_fee + '}';
    }

  

}
