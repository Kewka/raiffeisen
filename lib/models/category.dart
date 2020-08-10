import 'package:flutter/material.dart';

class Category {
  final int id;
  final String title;
  final IconData icon;
  final Color color;
  final int count;
  final double totalPrice;

  Category(
      {this.id,
      this.title,
      this.icon,
      this.color,
      this.count = 0,
      this.totalPrice = 0.0});
}
