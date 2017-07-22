package com.gv.VG.dao.interfaces;

import com.gv.VG.entities.Profile;

public interface ProfileDao {

    void insertProfile(Profile profile);

    Profile getProfile(int id);

    void deleteProfile(int id);

    Profile getProfileByEmail(String email);
}
