package com.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.*;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class User {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  long id;
  String name;
  String emailId;
  String password;

  public User(String name, String emailId, String password) {
    this.name = name;
    this.emailId = emailId;
    this.password = password;
  }
}
