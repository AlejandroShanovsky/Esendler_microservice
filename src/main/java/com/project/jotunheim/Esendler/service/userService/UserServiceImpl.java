package com.project.jotunheim.Esendler.service.userService;

import com.project.jotunheim.Esendler.dao.userDao.UserDao;
import com.project.jotunheim.Esendler.dao.userDao.UserDaoImpl;
import com.project.jotunheim.Esendler.entity.users.User;
import com.project.jotunheim.Esendler.utils.EmailHelper;
import org.apache.log4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    private static final org.slf4j.Logger LOGGER = LoggerFactory.getLogger(UserDaoImpl.class);

    @Override
    public User saveUser(User user) {
        LOGGER.info("UserServiceImpl -> method saveUser -> user " + user.toString());
//        if(EmailHelper.isMailValid(user.getEmail())) {
            userDao.addUser(user);
//        }

        return user;
    }

    @Override
    public User getUserByEmail(String email) {
        User user = null;
        try {
            if (email != null && email.length() > 1) {
                user = userDao.getUserByEmail(email);
                return user;
            }
        } catch (Exception ex) {
            ex.getMessage();
        }
        return null;
    }
}
