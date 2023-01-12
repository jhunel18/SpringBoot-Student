package com.example.student.controller;

import com.example.student.entity.StudentEntry;
import com.example.student.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(path = "/api")
public class StudentController {

    @Autowired
    private StudentRepository studentRepository;

    //Map the data

    @PostMapping(path = "/student")
    public @ResponseBody String addStudents(@RequestParam String studentFname,
                                            @RequestParam String studentLname,
                                            @RequestParam String studentEmail,
                                            @RequestParam String studentCourse){
        StudentEntry studentEntry = new StudentEntry();

        //studentEntry.setStudentId(studentId);
        studentEntry.setStudentFname(studentFname);
        studentEntry.setStudentLname(studentLname);
        studentEntry.setStudentEmail(studentEmail);
        studentEntry.setStudentCourse(studentCourse);
        studentRepository.save(studentEntry);
        return "Details Save Successfully";
    }
    @GetMapping(path = "/students")
    public @ResponseBody Iterable<StudentEntry> getAllStudents(){
        return studentRepository.findAll();
    }

    @GetMapping("student_id")
    public ResponseEntity<List<StudentEntry>> getByid(@RequestParam int id){
        return new ResponseEntity<>(studentRepository.findByid(id), HttpStatus.OK);
    }

}
