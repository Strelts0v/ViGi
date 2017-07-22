package com.gv.VG.dao.implementations;

import com.gv.VG.config.DataConfig;
import com.gv.VG.entities.Profile;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@DirtiesContext
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = DataConfig.class)
@WebAppConfiguration
public class JdbcProfileDaoTest {

    @Autowired
    private JdbcProfileDao dao;

    private final int TEST_ID_1 = 1;
    private final Profile TEST_PROFILE_ID_1 = new Profile(TEST_ID_1, "Gleb", "Streltsov",
            "Junior Java Developer", "Minsk", ":)");

    @Test
    public void getExistedProfileTest() throws Exception {
        int id = 1;
        String errorMessage = "Expected and actual profiles are different.";
        Profile profile = dao.getProfile(id);
        Assert.assertEquals(errorMessage, profile, TEST_PROFILE_ID_1);
    }

    @Test
    public void insertProfileTest() throws Exception {
        int id = 3;
        dao.deleteProfile(id);
        String errorMessage = "After insert expected and actual profiles are different.";
        Profile profile = new Profile(id, "test", "test",
                "test", "test", "test");
        dao.insertProfile(profile);
        Assert.assertEquals(errorMessage, profile, dao.getProfile(id));
    }

    @Test
    public void deleteExistedProfileTest() throws Exception {
        int id = 3;
        String errorMessage = "After deleting profile with id " + id + " however exists in database";
        dao.deleteProfile(id);
        Assert.assertNull(errorMessage, dao.getProfile(id));
    }

    @Test
    public void getNotExistedProfileTest() throws Exception {
        int id = 3;
        dao.deleteProfile(id);
        String errorMessage = "After querying for not existed object expected null.";
        Assert.assertNull(errorMessage, dao.getProfile(id));
    }

    @Test
    public void getProfileByExistedEmailTest() throws Exception {
        String email = "gleb.streltsov.4by@gmail.com";
        Profile profile = dao.getProfileByEmail(email);
        String errorMessage = "Expected and actual profiles are different.";
        Assert.assertEquals(errorMessage, profile, TEST_PROFILE_ID_1);

    }

}