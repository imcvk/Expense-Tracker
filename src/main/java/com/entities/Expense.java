package com.entities;

import jakarta.persistence.*;
import lombok.*;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Expense {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  long id;
  String title;
  String date;
  String time;
  String description;
  String price;
  @ManyToOne
  User user;

  public Expense(String title, String date, String time, String description, String price, User user) {
    this.title = title;
    this.date = date;
    this.time = time;
    this.description = description;
    this.price = price;
    this.user = user;
  }
}
