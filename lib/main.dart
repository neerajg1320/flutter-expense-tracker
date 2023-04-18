import 'package:flutter/material.dart';
import 'package:expense_tracker/expenses_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true), // Not necessary once default in sdk is changed
    home: const ExpensesScreen()
  ));
}