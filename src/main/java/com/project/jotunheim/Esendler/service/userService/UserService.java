package com.project.jotunheim.Esendler.service.userService;

import com.project.jotunheim.Esendler.entity.users.User;

public interface UserService {
    User saveUser(User user);
    User getUserByEmail(String email);

}
