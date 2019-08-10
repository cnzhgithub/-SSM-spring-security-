package cn.zh.uitls;

import org.springframework.security.crypto.password.PasswordEncoder;

public class JWTPasswordEncoder implements PasswordEncoder {
    @Override
    public String encode(CharSequence charSequence) {
        return charSequence.toString();
    }

    @Override
    public boolean matches(CharSequence charSequence, String s) {
        if (charSequence.toString().equals(s)) {
            return true;
        }
            return false;

    }
}
