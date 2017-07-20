package com.gv.VG.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/signin")
public class SignInController {

    @RequestMapping(method = RequestMethod.GET)
    public String getSignInPage(Model model){
        return "/views/signin";
    }
}
