package com.student.mvcapp.dao;

import java.util.List;

import com.student.mvcapp.model.Student;

public interface StudentDao {

	Student getStudent(Long id);

	Long saveStudent(Student st);

	List<Student> listAllStudents();

	void updateStudent(Student st);

	void deleteStudent(Student st);

}
