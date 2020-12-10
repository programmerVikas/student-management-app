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
public class Marksheet {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String student_name;
     @Column(unique = true)
    private String prn_no;
    private String semester;
    private String course_year;
    private String first_Subject;
    private String second_Subject;
    private String third_Subject;
    private String fourth_Subject;
    private String fifth_Subject;
    private String first_Subject_Marks;
    private String second_Subject_Marks;
    private String third_Subject_Marks;
    private String fourth_Subject_Marks;
    private String fifth_Subject_Marks;
    private String result;
    private String cgpa;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getFirst_Subject() {
        return first_Subject;
    }

    public void setFirst_Subject(String first_Subject) {
        this.first_Subject = first_Subject;
    }

    public String getSecond_Subject() {
        return second_Subject;
    }

    public void setSecond_Subject(String second_Subject) {
        this.second_Subject = second_Subject;
    }

    public String getThird_Subject() {
        return third_Subject;
    }

    public void setThird_Subject(String third_Subject) {
        this.third_Subject = third_Subject;
    }

    public String getFourth_Subject() {
        return fourth_Subject;
    }

    public void setFourth_Subject(String fourth_Subject) {
        this.fourth_Subject = fourth_Subject;
    }

    public String getFifth_Subject() {
        return fifth_Subject;
    }

    public void setFifth_Subject(String fifth_Subject) {
        this.fifth_Subject = fifth_Subject;
    }

    public String getFirst_Subject_Marks() {
        return first_Subject_Marks;
    }

    public void setFirst_Subject_Marks(String first_Subject_Marks) {
        this.first_Subject_Marks = first_Subject_Marks;
    }

    public String getSecond_Subject_Marks() {
        return second_Subject_Marks;
    }

    public void setSecond_Subject_Marks(String second_Subject_Marks) {
        this.second_Subject_Marks = second_Subject_Marks;
    }

    public String getThird_Subject_Marks() {
        return third_Subject_Marks;
    }

    public void setThird_Subject_Marks(String third_Subject_Marks) {
        this.third_Subject_Marks = third_Subject_Marks;
    }

    public String getFourth_Subject_Marks() {
        return fourth_Subject_Marks;
    }

    public void setFourth_Subject_Marks(String fourth_Subject_Marks) {
        this.fourth_Subject_Marks = fourth_Subject_Marks;
    }

    public String getFifth_Subject_Marks() {
        return fifth_Subject_Marks;
    }

    public void setFifth_Subject_Marks(String fifth_Subject_Marks) {
        this.fifth_Subject_Marks = fifth_Subject_Marks;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getCgpa() {
        return cgpa;
    }

    public void setCgpa(String cgpa) {
        this.cgpa = cgpa;
    }
    
    
    

    public Marksheet(int id, String student_name, String prn_no, String semester, String course_year, String first_Subject, String second_Subject, String third_Subject, String fourth_Subject, String fifth_Subject, String first_Subject_Marks, String second_Subject_Marks, String third_Subject_Marks, String fourth_Subject_Marks, String fifth_Subject_Marks) {
        this.id = id;
        this.student_name = student_name;
        this.prn_no = prn_no;
        this.semester = semester;
        this.course_year = course_year;
        this.first_Subject = first_Subject;
        this.second_Subject = second_Subject;
        this.third_Subject = third_Subject;
        this.fourth_Subject = fourth_Subject;
        this.fifth_Subject = fifth_Subject;
        this.first_Subject_Marks = first_Subject_Marks;
        this.second_Subject_Marks = second_Subject_Marks;
        this.third_Subject_Marks = third_Subject_Marks;
        this.fourth_Subject_Marks = fourth_Subject_Marks;
        this.fifth_Subject_Marks = fifth_Subject_Marks;
    }

    public Marksheet(String result, String cgpa) {
        this.result = result;
        this.cgpa = cgpa;
    }

    @Override
    public String toString() {
        return "Marksheet{" + "id=" + id + ", student_name=" + student_name + ", prn_no=" + prn_no + ", semester=" + semester + ", course_year=" + course_year + ", first_Subject=" + first_Subject + ", second_Subject=" + second_Subject + ", third_Subject=" + third_Subject + ", fourth_Subject=" + fourth_Subject + ", fifth_Subject=" + fifth_Subject + ", first_Subject_Marks=" + first_Subject_Marks + ", second_Subject_Marks=" + second_Subject_Marks + ", third_Subject_Marks=" + third_Subject_Marks + ", fourth_Subject_Marks=" + fourth_Subject_Marks + ", fifth_Subject_Marks=" + fifth_Subject_Marks + ", result=" + result + ", cgpa=" + cgpa + '}';
    }



    public Marksheet() {
    }

   
    
    
    
}
