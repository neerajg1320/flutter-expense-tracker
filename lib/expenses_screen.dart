import 'package:expense_tracker/widgets/expenses/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses/expenses_list.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesScreenState();
  }
}

class _ExpensesScreenState  extends State<ExpensesScreen> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter course',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cinema',
        amount: 15.69,
        date: DateTime.now(),
        category: Category.leisure)        
  ];
    
  void _openAddExpenseOverlay() {
    // print('clicked add');

    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children:  [
          // Toolbar with the Add button
          const Text('The chart'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses)
          ),
        ],
      ),
    );
  }
}