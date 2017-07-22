package com.gv.VG.controllers;

import com.gv.VG.dao.interfaces.ProfileDao;
import com.gv.VG.entities.Profile;
import com.gv.VG.services.interfaces.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/profile")
public class ProfileController {

    @Autowired
    private ProfileDao profileDao;

    @Autowired
    private UserService service;

    @RequestMapping(method = RequestMethod.GET)
    public String getProfilePage(Model model){

        UserDetails details = (UserDetails)org.springframework.security.core.context.
                SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Profile profile = profileDao.getProfileByEmail(details.getUsername());
        model.addAttribute("profile", profile);
        return "/views/profile";
    }
}
