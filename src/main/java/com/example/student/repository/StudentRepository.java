package com.example.student.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.student.entity.StudentEntry;

import java.util.List;

@Repository
public interface StudentRepository extends JpaRepository<StudentEntry, Long> {

    List<StudentEntry>findByid(int id);
}

