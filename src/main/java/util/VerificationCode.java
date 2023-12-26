package util;

import java.util.Random;

public class VerificationCode {
    private int code;
    private long expirationTime;
    private boolean isVerified;

    public VerificationCode() {
    }

    public VerificationCode(int code, long expirationTime, boolean isVerified) {
        this.code = code;
        this.expirationTime = expirationTime;
        this.isVerified = isVerified;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public long getExpirationTime() {
        return expirationTime;
    }

    public void setExpirationTime(long expirationTime) {
        this.expirationTime = expirationTime;
    }

    public boolean isVerified() {
        return isVerified;
    }

    public void setVerified(boolean verified) {
        isVerified = verified;
    }

    public static int generateNewCode() {
        Random rd = new Random();
        return rd.nextInt(999999);
    }

    public static void main(String[] args) {
        System.out.println(generateNewCode());
    }
}
