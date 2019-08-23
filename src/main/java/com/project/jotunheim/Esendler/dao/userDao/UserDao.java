package com.project.jotunheim.Esendler.dao.userDao;

import com.project.jotunheim.Esendler.entity.users.User;

public interface UserDao {
    User getUserByEmail(String email);
    User addUser(User user);
}
