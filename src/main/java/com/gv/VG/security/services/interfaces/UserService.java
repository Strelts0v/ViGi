package com.gv.VG.security.services.interfaces;

import com.gv.VG.security.models.User;

public interface UserService {

    User getUser(String login);

}
