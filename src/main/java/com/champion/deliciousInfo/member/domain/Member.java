package com.champion.deliciousInfo.member.domain;

import lombok.*;

@Getter @Setter @ToString
@NoArgsConstructor
@AllArgsConstructor
public class Member {
    private String account;
    private String password;
    private String grade;
    private String email;
    private String gender;
    private String phone;
    private String name;
}
