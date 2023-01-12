package com.example.student.controller;

import com.example.student.entity.StudentEntity;
import com.example.student.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(path = "/api")
public class StudentController {

    @Autowired
    private StudentService studentService;
    //Map the data

    @PostMapping(path = "/student")
    public @ResponseBody String addStudents(@RequestParam String studentFname,
                                            @RequestParam String studentLname,
                                            @RequestParam String studentEmail,
                                            @RequestParam String studentCourse){
        return studentService.createStudent(studentFname, studentLname, studentEmail, studentCourse);

    }
    @GetMapping(path = "/students")
    public @ResponseBody Iterable<StudentEntity> getAllStudents(){
        return studentService.getAllStudents();
    }

    @GetMapping("student_id")
    public ResponseEntity<List<StudentEntity>> getByid(@RequestParam int id){
        return studentService.getByid(id);
//        return new ResponseEntity<>(studentService.findByid(id), HttpStatus.OK);
    }

}
