package com.room.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

/**
 * @ClassName: MD5Util
 * @Description: MD5 加密工具类
 */
public class MD5Util {
    
    public static String encode(String orgStr) {
        MessageDigest md = null;
        try {
            md = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        byte[] dest = md.digest(orgStr.getBytes());
        // 使用 Java 标准 Base64 编码
        return Base64.getEncoder().encodeToString(dest);
    }
}
