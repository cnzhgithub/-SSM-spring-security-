package cn.zh;

import java.util.UUID;

public class Getuuid {
    public static void main(String[] args) {
        String s = UUID.randomUUID().toString();
        System.out.println(s);
    }
}
