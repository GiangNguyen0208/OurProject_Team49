package util;

import org.apache.tomcat.util.codec.binary.Base64;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

public class Encode {
    public static String toSHA1(String input) {

        String salt = "axrbumalqdsoa;aks,qke";
        String output = null;

        input = input + salt;

        try {

            byte[] dataBytes = input.getBytes(StandardCharsets.UTF_8);
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            output = Base64.encodeBase64String(md.digest(dataBytes));

        } catch (Exception e) {
            e.printStackTrace();
        }

        return output;
    }

    public static void main(String[] args) {
        System.out.println(toSHA1("1234"));
    }
}
