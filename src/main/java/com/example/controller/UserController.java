package com.example.controller;

import com.example.entity.User;
import com.example.repository.UserRepository;
import com.example.service.UserService;
import com.example.utils.ValidateImageCodeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

//    @GetMapping("/findAll")
//    public List<User> findAll() {
//        return userRepository.findAll();
//    }

    //make validation code image
    @GetMapping("/getImage")
    public void getImage(HttpSession session, HttpServletResponse response) throws IOException {
        String securityCode = ValidateImageCodeUtils.getSecurityCode();
        session.setAttribute("code", securityCode);
        BufferedImage image = ValidateImageCodeUtils.createImage(securityCode);
        ServletOutputStream os = response.getOutputStream();
        ImageIO.write(image, "png", os);
    }

    @PostMapping("/register")
    public String register(User user, String code, HttpSession session) {
        String securityCode = session.getAttribute("code").toString();
        if (code.equals(securityCode)) {
            userService.save(user);
            return "redirect:/ems/login.jsp";
        }
        return "redirect:/ems/register.jsp";
    }

    @PostMapping("/login")
    public String login(String username, String password, HttpSession session) {
        User user = userService.findByUsernameAndPassword(username, password);
        if (user != null) {
            session.setAttribute("user", user);
            return "redirect:/employee/findAll";
        }
        return "redirect:/ems/login.jsp";
    }
}
