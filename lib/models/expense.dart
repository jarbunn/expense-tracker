import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Catergory { food, travel, leisure, work }
const catergoryIcons = {
  Catergory.food: Icons.lunch_dining,
  Catergory.travel: Icons.flight_takeoff,
  Catergory.leisure: Icons.movie,
  Catergory.work: Icons.work,
};

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.catergory})
      : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Catergory catergory;

  get formattedDate {
    return formatter.format(date);
  }
}
