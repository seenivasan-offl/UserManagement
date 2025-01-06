package com.example.demo.DAO;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.User1;

public interface UserDAO extends CrudRepository<User1, Integer>{

}
