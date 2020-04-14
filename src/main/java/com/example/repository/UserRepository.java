package com.example.repository;

import com.example.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserRepository {

    //List<User> findAll();

    void save(User user);

    User findByUsernameAndPassword(@Param("username") String username, @Param("password") String password);
}
