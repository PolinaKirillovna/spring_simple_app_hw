package com.example.demo.model;

import lombok.*;

@Getter
@Setter
@Data
@NoArgsConstructor
public class Login {
    private String username;
    private String password;
    private String oldPassword;
}