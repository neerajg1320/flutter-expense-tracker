import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses/expenses_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(Object context) {
    return ListView.builder(
      itemBuilder: (ctx, index) => ExpenseItem(expenses[index]),
      itemCount: expenses.length
    );
  }
}