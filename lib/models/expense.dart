import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

// создает отформатированный обьект с датой
final formatter = DateFormat.yMd();

enum Category { food, travel, leisure, work }

const uuid = Uuid();

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.leisure: Icons.sports_tennis,
  Category.travel: Icons.flight_takeoff,
  Category.work: Icons.work,
};

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4(); // generates unique string id

  String get formattedDate {
    return formatter.format(date);
  }
}

// we can sum up all expenses that belong to one category
class ExpenseBucket {
  // fields for storing info
  final Category category;
  final List<Expense> expenses;

  ExpenseBucket({required this.category, required this.expenses});
  //filtering expenses that belong to category
  //if we have an expense that has a category - we save it in a list

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where((expense) => expense.category == category)
            .toList();

  // if we want to keep our expense in a list we put true. If not - false

  double get totalExpenses {
    double sum = 0;

    for (final expense in expenses) {
      sum = sum + expense.amount;
    }
    return sum;
  }
}
