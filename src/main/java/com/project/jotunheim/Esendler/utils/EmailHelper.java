package com.project.jotunheim.Esendler.utils;

import java.util.HashMap;
import java.util.Map;

public class EmailHelper {
    private static final Map<String,String> mailD = new HashMap<>();

    static {
        mailD.put("mail.ru","https://e.mail.ru/");
        mailD.put("bk.ru","https://e.mail.ru/");
        mailD.put("list.ru","https://e.mail.ru/");
        mailD.put("inbox.ru","https://e.mail.ru/");
        mailD.put("yandex.ru","https://mail.yandex.ru/");
        mailD.put("ya.ru","https://mail.yandex.ru/");
        mailD.put("yandex.ua","https://mail.yandex.ua/");
        mailD.put("yandex.by","https://mail.yandex.by/");
        mailD.put("yandex.kz","https://mail.yandex.kz/");
        mailD.put("yandex.com","https://mail.yandex.com/");
        mailD.put("gmail.com","https://mail.google.com/");
        mailD.put("googlemail.com","https://mail.google.com/");
        mailD.put("outlook.com","https://mail.live.com/");
        mailD.put("hotmail.com","https://mail.live.com/");
        mailD.put("live.ru","https://mail.live.com/");
        mailD.put("live.com","https://mail.live.com/");
        mailD.put("me.com","https://www.icloud.com/");
        mailD.put("icloud.com","https://www.icloud.com/");
        mailD.put("rambler.ru","https://mail.rambler.ru/");
        mailD.put("yahoo.com","https://mail.yahoo.com/");
        mailD.put("ukr.net","https://mail.ukr.net/");
        mailD.put("i.ua","http://mbox2.i.ua/");
        mailD.put("bigmir.net","http://mail.bigmir.net/");
        mailD.put("tut.by","https://mail.tut.by/");
        mailD.put("inbox.lv","https://www.inbox.lv/");
        mailD.put("mail.kz","http://mail.kz/");
    }

    public static boolean isMailValid(String email) {
        if (email.contains("@")) {
            String string = email.substring(email.lastIndexOf('@')+1);
            for (int i = 0; i < mailD.size(); i++) {
                if (mailD.containsKey(string)) {
                    return true;
                }
            }
        } else {
            return false;
        }
        return false;
    }
}
