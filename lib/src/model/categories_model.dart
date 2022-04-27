import 'package:flutter/material.dart';

class Category{
  String name;
  IconData icon;
  Category({required this.name,required this.icon});
}
List<Category> categories=[
  Category(name: 'name', icon: Icons.abc),
  Category(name: 'name1', icon: Icons.abc),
  Category(name: 'name2', icon: Icons.abc),
  Category(name: 'name3', icon: Icons.abc),
  Category(name: 'name4', icon: Icons.abc),
];