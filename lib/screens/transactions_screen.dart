import 'package:expense_tracker_app/screens/submit_form_screen.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';


import '../utils/app_layout.dart';

class TransactionScreen extends StatelessWidget {
  // final Map<String, dynamic> transaction;
  const TransactionScreen({Key? key, /*required this.transaction*/} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
    child: ListView(
    children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * 0.15,
            height: AppLayout.getHeight(40),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
            margin: const EdgeInsets.only(right: 17, top: 40),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Styles.primaryColor,
            image: const DecorationImage(
            fit: BoxFit.cover,
                image:  AssetImage("assets/images/wallet.png"))),
    ),
    Container(
    width: size.width * 0.15,
    height: AppLayout.getHeight(40),
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
    margin: const EdgeInsets.only(right: 17, top: 40),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: Styles.primaryColor,
    image: const DecorationImage(
    fit: BoxFit.cover,
    image:  AssetImage("assets/images/next.png"))),
          ),],
      ),
      const Gap(15),
      Row(
        children: [
          Text("Transactions", style: Styles.captionTextStyle,)
        ],
      ),
      const Gap(25),
      Container(

        margin: const EdgeInsets.only(right: 50, left:40),
        child: Row(
          children: [
            Text("Expense Form", style: Styles.captionTextStyle,)
          ],
        ),
      ),
      CustomPaint(
        painter: LinePainter(),
        size: Size(200, 100),
      ),
      const FormWidget(),
    ],
    ),
        ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.black;
    paint.strokeWidth = 4;

    final offset = Offset(0, size.height / 2);
    final end = Offset(size.width, size.height / 2);
    canvas.drawLine(offset, end, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}