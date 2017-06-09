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

    @Before
    public void setUpEntityManager() throws Exception {
        em = emf.createEntityManager();
    }

    @Test
    public void getExistedUserTest() throws Exception {
        User user = userService.getUser("gleb.streltsov.4by@gmail.com");
        Assert.assertEquals(user.getEmail(), "gleb.streltsov.4by@gmail.com");
        Assert.assertEquals(user.getPassword(), "f0ac2325b6bd0302bcd8862ca5852f99dcfe5a91");
    }
}