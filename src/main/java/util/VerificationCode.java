package util;

import java.util.Random;

public class VerificationCode {
    public static int generateVerificationCode() {
        Random random = new Random();
        return 100000 + random.nextInt(999999);
    }
}
