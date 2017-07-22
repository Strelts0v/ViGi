package com.gv.VG.dao.mappers;

import com.gv.VG.entities.Profile;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

@SuppressWarnings("rawtypes")
public class ProfileRowMapper implements RowMapper{

    private final static String ID_COLUMN_LABEL = "id_user";
    private final static String FIRST_NAME_COLUMN_LABEL = "first_name";
    private final static String LAST_NAME_COLUMN_LABEL = "last_name";
    private final static String POSITION_COLUMN_LABEL = "position";
    private final static String CITY_COLUMN_LABEL = "city";
    private final static String STATUS_COLUMN_LABEL = "status";

    @Override
    public Object mapRow(ResultSet rs, int i) throws SQLException {
        Profile profile = new Profile();
        profile.setId(rs.getInt(ID_COLUMN_LABEL));
        profile.setFirstName(rs.getString(FIRST_NAME_COLUMN_LABEL));
        profile.setLastName(rs.getString(LAST_NAME_COLUMN_LABEL));
        profile.setPosition(rs.getString(POSITION_COLUMN_LABEL));
        profile.setCity(rs.getString(CITY_COLUMN_LABEL));
        profile.setStatus(rs.getString(STATUS_COLUMN_LABEL));
        return profile;
    }
}
