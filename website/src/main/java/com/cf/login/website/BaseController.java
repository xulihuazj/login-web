package com.cf.login.website;

import com.cf.login.constant.KeyName;
import com.cf.login.utils.LogHelper;
import com.cf.login.utils.WebHelper;
import com.yinfeixing.utils.security.SecurityHelper;
import com.yinfeixing.video.request.APIRequest;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * BaseController是所有Controller的基类,用于一些统一/公共部分的处理
 *
 * @description 所有Controller的基类
 */

public abstract class BaseController {

    @SuppressWarnings("all")
    public static <C> APIRequest<C> getRequest(HttpServletRequest httpRequest, C bizRequest) {
        APIRequest apiRequest = new APIRequest();
        apiRequest.setDeviceId(getUuid(httpRequest));
        apiRequest.setDtMonitor(WebHelper.getUseAgent(httpRequest));
        apiRequest.setVersion("1.0.0");
        apiRequest.setBizRequest(bizRequest);
        return apiRequest;
    }

    public static String getServerURL(HttpServletRequest httpRequest) {
        String port = "";
        if (StringUtils.isNotBlank(httpRequest.getServerPort() + "")) {
            port = ":" + httpRequest.getServerPort() + "";
        }
        String path = httpRequest.getScheme() + "://" + httpRequest.getServerName() + port + httpRequest.getContextPath();
        path = path.substring(path.length() - 1).equals("/") ? path.substring(0, path.length() - 1) : path;
        return path;
    }

    public static String getUuid(HttpServletRequest httpRequest) {
        String uuid = WebHelper.getCookie(httpRequest, KeyName.UUID_KEY_NAME);
        return uuid;
    }

    public static void SetBackurl(String backurl, HttpServletResponse response) {
        try {
            backurl = SecurityHelper.desEncrypt(backurl, KeyName.DES_KEY_NAME);
        } catch (Exception e) {
            LogHelper.error(e);
        }
        WebHelper.setCookie(response, KeyName.LOGIN_BACKURL_NAME, backurl, KeyName.COOKIE_TIME);
    }

    public static String getBackurl(HttpServletRequest httpRequest) {
        String backurl = WebHelper.getCookie(httpRequest, KeyName.LOGIN_BACKURL_NAME);
        try {
            if (StringUtils.isNotBlank(backurl)) {
                backurl = SecurityHelper.desDecrypt(backurl, KeyName.DES_KEY_NAME);
                if (backurl.contains("login/")) {
                    backurl = getServerURL(httpRequest) + "/home/room/detail";
                }
            } else {
                backurl = getServerURL(httpRequest) + "/home/room/detail";
            }
        } catch (Exception e) {
            LogHelper.error(e);
        }
        return backurl;
    }

    public static void removeBackurl(HttpServletResponse response) {
        try {
            WebHelper.delCookie(response, KeyName.LOGIN_BACKURL_NAME);
        } catch (IOException e) {
            LogHelper.error(e);
        }
    }
}
