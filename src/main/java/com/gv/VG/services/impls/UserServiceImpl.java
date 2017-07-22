package com.gv.VG.services.impls;

import com.gv.VG.entities.User;
import com.gv.VG.repositories.UserRepository;
import com.gv.VG.services.interfaces.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User getUser(String email) {
        return userRepository.findByName(email);
    }

}
