package com.gv.VG.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/signup")
public class SignUpController {

    @RequestMapping(method = RequestMethod.GET)
    public String getSignUpPage(Model model){
        return "/views/signup";
    }

    @RequestMapping(method = RequestMethod.POST)
    // register new user in database
    public String signUp(Model model){
        return "/views/signup";
    }
}
