package com.tisv2000.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "moviePerson")
public class MoviePerson {
    @Id
    private Integer id;
    private Integer movieId;
    private Integer personId;
    private PersonRole role;
}
