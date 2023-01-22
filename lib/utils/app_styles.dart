import 'package:flutter/material.dart';

Color primary = const Color(0xFF424242);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFFFFFFFF);
  static Color bgColor = const Color(0xFF404040);
  static Color textIncomeColor = const Color(0xFF4CAF50);
  static Color textExpenseColor = const Color(0xFFF44336);
  static Color textBudgetColor = const Color(0xFF2196F3);
  static Color blackColor = const Color(0xFFFFFFFF);
  static TextStyle textStyle = TextStyle(fontSize: 16,color: textColor,fontWeight: FontWeight.w500);
  static TextStyle captionTextStyle =  TextStyle(fontSize: 40, color: textColor,fontWeight: FontWeight.bold);
  static TextStyle incomeTextStyle =  TextStyle(fontSize: 20, color: textIncomeColor,fontWeight: FontWeight.bold);
  static TextStyle expenseTextStyle =  TextStyle(fontSize: 20, color: textExpenseColor,fontWeight: FontWeight.bold);
  static TextStyle budgetTextStyle =  TextStyle(fontSize: 20, color: textBudgetColor,fontWeight: FontWeight.bold);
}

