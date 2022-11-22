package com.champion.deliciousInfo.util;

import javax.servlet.http.HttpSession;

public class LoginUtils {

    public static final String LOGIN_ADMIN = "loginAdmin";

    public static final String LOGIN_FLAG = "loginUser";
    public static final String LOGIN_FROM = "loginMethod";

    // 로그인했는지 알려주기~~
    public static boolean isLogin(HttpSession session) {
        return session.getAttribute(LOGIN_FLAG) != null;
    }




}
