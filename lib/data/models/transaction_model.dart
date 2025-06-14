import 'package:banking_dashboard/imports.dart';
class TransactionModel {
  final String title;
  final String type;
  final String date;
  final String amount;
  final String icon;
  final Color iconColor;
  final bool isDebit;

  TransactionModel({
    required this.title,
    required this.type,
    required this.date,
    required this.amount,
    required this.icon,
    required this.iconColor,
    required this.isDebit,
  });
}