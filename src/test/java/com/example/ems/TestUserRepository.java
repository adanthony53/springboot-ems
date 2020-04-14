package com.example.ems;

import com.example.EmsApplication;
import com.example.entity.User;
import com.example.repository.UserRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@SpringBootTest(classes = EmsApplication.class)
@RunWith(SpringRunner.class)
public class TestUserRepository {

    @Autowired
    private UserRepository userRepository;


    @Test
    public void testSave() {
        userRepository.save(new User("4", "小春", "小春小春小春", "444444", "M"));
    }
}
