package com.gv.VG.services.impls;

import com.gv.VG.entities.User;
import com.gv.VG.services.interfaces.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.Set;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    private static final int ADMIN_ROLE_MASK = 11;
    private static final int USER_ROLE_MASK = 1;
    private static final String ADMIN_ROLE = "ROLE_ADMIN";
    private static final String USER_ROLE = "ROLE_USER";

    @Autowired
    private UserService userService;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = userService.getUser(email);
        Set<GrantedAuthority> roles = new HashSet();
        if(user.getRoleMask() == ADMIN_ROLE_MASK){
            roles.add(new SimpleGrantedAuthority(ADMIN_ROLE));
        } else if (user.getRoleMask() == USER_ROLE_MASK){
            roles.add(new SimpleGrantedAuthority(USER_ROLE));
        }

        UserDetails userDetails =
                new org.springframework.security.core.userdetails.User(user.getEmail(), user.getPassword(), roles);

        return userDetails;
    }

}
