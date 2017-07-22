package com.gv.VG.dao.implementations;

import com.gv.VG.dao.interfaces.ProfileDao;
import com.gv.VG.dao.mappers.ProfileRowMapper;
import com.gv.VG.entities.Profile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;

public class JdbcProfileDao implements ProfileDao {

    private DataSource dataSource;

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public JdbcProfileDao(DataSource dataSource){
        this.dataSource = dataSource;
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public void insertProfile(Profile profile) {
        String query = "INSERT INTO profiles(id_user, first_name, last_name, position, city, status)" +
                " VALUES (?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(query, new Object[]{profile.getId(), profile.getFirstName(),
                profile.getLastName(), profile.getPosition(), profile.getCity(), profile.getStatus()
        });
    }

    @Override
    public Profile getProfile(int id) {
        Profile profile = null;
        try {
            String query = "SELECT * FROM profiles WHERE id_user = ?";
            profile = (Profile) jdbcTemplate.queryForObject(
                    query, new Object[]{id}, new ProfileRowMapper());
        } catch (EmptyResultDataAccessException e){
            e.printStackTrace();
        } finally {
            return profile;
        }
    }

    @Override
    public void deleteProfile(int id) {
        String query = "DELETE FROM profiles where id_user = ?";
        jdbcTemplate.update(query, new Object[]{id});
    }

    @Override
    public Profile getProfileByEmail(String email) {
        Profile profile = null;
        try {
            String query = "SELECT * from profiles where id_user = (select id_user from users where email = ?)";
            profile = (Profile) jdbcTemplate.queryForObject(
                    query, new Object[]{email}, new ProfileRowMapper());
        } catch (EmptyResultDataAccessException e){
            e.printStackTrace();
        } finally {
            return profile;
        }
    }
}
