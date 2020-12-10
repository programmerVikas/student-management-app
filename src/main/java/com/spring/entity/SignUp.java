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
    @UniqueConstraint(columnNames = {"prn"})})
public class SignUp {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String user_type;
    private String first_name;
    private String last_name;
    @Column(unique = true)
    private String prn;
    private String pass1;

    private String school;
    private String course;
    private String branch;
    private String gender;
    private String dob;
    private long phone;
    private String mail;
    private String country;
    private String s_state;
    private String city;
    private String address1;
    private String address2;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser_type() {
        return user_type;
    }

    public void setUser_type(String user_type) {
        this.user_type = user_type;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getPrn() {
        return prn;
    }

    public void setPrn(String prn) {
        this.prn = prn;
    }

    public String getPass1() {
        return pass1;
    }

    public void setPass1(String pass1) {
        this.pass1 = pass1;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public long getPhone() {
        return phone;
    }

    public void setPhone(long phone) {
        this.phone = phone;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getS_state() {
        return s_state;
    }

    public void setS_state(String s_state) {
        this.s_state = s_state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public SignUp(int id, String user_type, String first_name, String last_name, String prn, String pass1, String school, String course, String branch, String gender, String dob, long phone, String mail, String country, String s_state, String city, String address1, String address2) {
        this.id = id;
        this.user_type = user_type;
        this.first_name = first_name;
        this.last_name = last_name;
        this.prn = prn;
        this.pass1 = pass1;
        this.school = school;
        this.course = course;
        this.branch = branch;
        this.gender = gender;
        this.dob = dob;
        this.phone = phone;
        this.mail = mail;
        this.country = country;
        this.s_state = s_state;
        this.city = city;
        this.address1 = address1;
        this.address2 = address2;
    }

    public SignUp() {
    }

    @Override
    public String toString() {
        return "SignUp{" + "id=" + id + ", user_type=" + user_type + ", first_name=" + first_name + ", last_name=" + last_name + ", prn=" + prn + ", pass1=" + pass1 + ", school=" + school + ", course=" + course + ", branch=" + branch + ", gender=" + gender + ", dob=" + dob + ", phone=" + phone + ", mail=" + mail + ", country=" + country + ", s_state=" + s_state + ", city=" + city + ", address1=" + address1 + ", address2=" + address2 + '}';
    }

}
