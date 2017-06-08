package com.gv.VG.security.services.impls;

import com.gv.VG.security.models.User;
import com.gv.VG.security.services.interfaces.UserService;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Override
    public User getUser(String login) {
        User user = new User();
        user.setLogin(login);
        user.setPassword("7110eda4d09e062aa5e4a390b0a572ac0d2c0220");

        // TODO: get user from database

        return user;
    }

}
