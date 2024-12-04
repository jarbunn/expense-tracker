import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 19.99,
        date: DateTime.now(),
        catergory: Catergory.work),
    Expense(
        title: 'Cinema',
        amount: 50.10,
        date: DateTime.now(),
        catergory: Catergory.leisure)
  ];

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('chart'), 
          Expanded(
            child: ExpensesList(
              expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
