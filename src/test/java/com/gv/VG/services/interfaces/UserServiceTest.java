package com.gv.VG.services.interfaces;

import com.gv.VG.config.DataConfig;
import com.gv.VG.entities.User;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

@DirtiesContext
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = DataConfig.class)
@WebAppConfiguration
public class UserServiceTest {

    @Resource
    private EntityManagerFactory emf;
    protected EntityManager em;

    @Resource
    private UserService userService;

    private final int TEST_ID_1 = 1;
    private final String TEST_USER_EMAIL_ID_1 = "gleb.streltsov.4by@gmail.com";
    private final String TEST_USER_PASSWORD_ID_1 = "f0ac2325b6bd0302bcd8862ca5852f99dcfe5a91";
    private final int TEST_USER_MASK_ID_1 = 11;
    private final User TEST_USER_ID_1 = new User(TEST_ID_1, TEST_USER_EMAIL_ID_1, TEST_USER_PASSWORD_ID_1, TEST_USER_MASK_ID_1);

    @Before
    public void setUpEntityManager() throws Exception {
        em = emf.createEntityManager();
    }

    @Test
    public void getExistedUserTest() throws Exception {
        String errorMessage = "Expected and actual users are different.";
        User user = userService.getUser(TEST_USER_EMAIL_ID_1);
        Assert.assertEquals(errorMessage, user, TEST_USER_ID_1);
        Assert.assertEquals(user.getPassword(), "f0ac2325b6bd0302bcd8862ca5852f99dcfe5a91");
    }
}