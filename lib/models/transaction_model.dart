class TransactionModel {
  final String title, subTitle, amount;
  final bool isWithdrawal;

  TransactionModel({
    required this.subTitle,
    required this.amount,
    required this.isWithdrawal,
    required this.title,
  });
}
