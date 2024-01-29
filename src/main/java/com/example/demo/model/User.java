package com.example.demo.model;

import lombok.*;

@Getter
@Setter
@Data
@NoArgsConstructor
public class User {
    @NonNull
    private Double Id;

    @NonNull
    private String username;
    @NonNull
    private String password;
    private String oldPassword;
    @NonNull
    private String email;

}
