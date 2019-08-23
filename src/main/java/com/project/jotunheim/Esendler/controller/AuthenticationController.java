package com.project.jotunheim.Esendler.controller;

import com.project.jotunheim.Esendler.entity.users.User;
import com.project.jotunheim.Esendler.service.userService.UserService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AuthenticationController {
    private static final org.slf4j.Logger LOGGER = LoggerFactory.getLogger(AuthenticationController.class);

    @Autowired
    private UserService userService;

    @GetMapping(value = "/")
    public ModelAndView indexPage(RedirectAttributes redirectAttributes, HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("Warning");
        return modelAndView;
    }

    @GetMapping(value = "/test")
    public String test() {
        return "index";
    }

    @GetMapping(value = "/addUser")
    public ModelAndView getUserRegistrationForm() {
        LOGGER.info("getUserRegistrationForm Get method");
        ModelAndView modelAndView = new ModelAndView("add_user");
        modelAndView.addObject("user", new User());
        return modelAndView;
    }

    @PostMapping(value = "/addUser")
    public ModelAndView addNewUser(@ModelAttribute("user") User user, RedirectAttributes redirectAttributes) {
        try {
            userService.saveUser(user);
        }catch (Exception ex) {
            ex.getMessage();
        }

        User userFromDao = userService.getUserByEmail(user.getEmail());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/admin/{" + userFromDao.getEmail() + "}/{" + userFromDao.getPassword() + "}");
        return modelAndView;
    }

    //Контролер для входа на админ панель через email админа и его пароля
    @GetMapping(value = "/admin/{email}/{password}")
    public ModelAndView adminIndexPage(@PathVariable String email, @PathVariable String password, Model model) {
        model.addAttribute("email", email);
        model.addAttribute("password", password);
        ModelAndView modelAndView = new ModelAndView("index");
        if (isSuchUser(email, password)) {
            modelAndView.setViewName("index");
            User user = userService.getUserByEmail(email);
            modelAndView.addObject("user", user);
//            modelAndView.addObject("emailReq", );
            return modelAndView;
        }
        modelAndView.setViewName("404");
        return modelAndView;
    }

//    @PostMapping(value = "/admin/cabinet/send_mail")
//    public ModelAndView


    private boolean isSuchUser(String email, String password) {
        User user = userService.getUserByEmail(email);
        return user != null && user.getPassword().equals(password);
    }
}
