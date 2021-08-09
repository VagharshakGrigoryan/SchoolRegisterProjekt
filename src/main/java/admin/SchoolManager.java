package admin;

import db.DBConnectionProvider;
import model.School;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class SchoolManager {
    private final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
    private final Connection connection = DBConnectionProvider.getProvider().getConnection();
    private final UserManager userManager = new UserManager();


    public void addSchool(School school) {
        try {
            String query = "INSERT INTO scls (name,classes,flows,register) " +
                    "VALUES(?,?,?,?);";
            PreparedStatement pStatement = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            pStatement.setString(1, school.getName());
            pStatement.setString(2, school.getClasses());
            pStatement.setString(3, school.getFlows());
            pStatement.setString(4, sdf.format(school.getRegister()));

            System.out.println(query);
            pStatement.executeUpdate();
            ResultSet generatedKeys = pStatement.getGeneratedKeys();
            if (generatedKeys.next()) {
                int id = generatedKeys.getInt(1);
                school.setId(id);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public void updateSchoolr(School school) {
        try {
            Statement statement = connection.createStatement();
            String query = String.format("UPDATE user SET name = " +
                            "'%s', clases = '%s', flows='%s',registerdata='%s',  WHERE id=" + school.getId(),
                    school.getName(), school.getClasses(), school.getFlows(), school.getRegister());
            System.out.println(query);
            statement.executeUpdate(query);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }


    public List<School> getSchools() {
        String sql = "SELECT * FROM  scls ";
        List<School> schools = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                School school = School.builder()
                        .id(resultSet.getInt(1))
                        .name(resultSet.getString(2))
                        .classes(resultSet.getString(3))
                        .flows(resultSet.getString(4))
                        .register(resultSet.getDate(5))

                        .build();
                schools.add(school);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return schools;
    }


    public List<School> getAllSchools() {
        String sql = "SELECT * FROM  scls ";
        List<School> schools = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                School school = School.builder()
                        .id(resultSet.getInt(1))
                        .name(resultSet.getString(2))
                        .classes(resultSet.getString(3))
                        .flows(resultSet.getString(4))
                        .register(resultSet.getDate(5))

                        .build();
                schools.add(school);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return schools;
    }
    public List<School> getAllSchoolByUserId(int user_id) {
        String sql = "SELECT * from scls";
        List<School> schools = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {
                School  school= School.builder()
                        .id(resultSet.getInt(1))
                        .name(resultSet.getString(2))
                        .classes(resultSet.getString(3))
                        .flows(resultSet.getString(4))
                        .register(resultSet.getDate(5))

                        .build();
                schools.add(school);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return schools;
    }

    public School getSchoolById(int id) {
        String sql = "SELECT * FROM scls WHERE id=" + id;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            if (resultSet.next()) {
                return School.builder()
                        .id(resultSet.getInt(1))
                        .name(resultSet.getString(2))
                        .classes(resultSet.getString(3))
                        .flows(resultSet.getString(4))
                        .register(resultSet.getDate(5))

                        .build();
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }



    public void deleteSchool(int id) {
        String sql = "DELETE from scls where id = " + id;
        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate(sql);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

}

