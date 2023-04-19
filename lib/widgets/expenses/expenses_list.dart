import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses/expenses_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(Object context) {
    return ListView.builder(
        itemBuilder: (ctx, index) => Dismissible(
              key: ValueKey(expenses[index]),
              background: Container(
                color: Theme.of(ctx).colorScheme.error.withOpacity(0.75),
                margin: EdgeInsets.symmetric(horizontal: Theme.of(ctx).cardTheme.margin!.horizontal),
              ),
              child: ExpenseItem(expenses[index]),
              onDismissed: (direction) {
                onRemoveExpense(expenses[index]);
              },
            ),
        itemCount: expenses.length);
  }
}