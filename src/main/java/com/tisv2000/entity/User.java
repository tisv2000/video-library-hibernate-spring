package com.tisv2000.entity;

import com.tisv2000.converter.BirthdayConvertor;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "users")
public class User {
    @Id
    private Integer id;
    private String name;
    @Convert(converter = BirthdayConvertor.class)
    @Column(name = "birth_date")
    private LocalDate birthdate;
    private String password;
    private String email;
    private Role role;
    private Gender gender;
}
