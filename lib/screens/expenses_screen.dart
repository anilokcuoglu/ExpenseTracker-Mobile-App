import 'package:flutter/material.dart';
import 'package:expense_tracker_app/utils/app_styles.dart';
import 'package:gap/gap.dart';


import '../utils/app_layout.dart';

class ExpenseScreen extends StatelessWidget {
  // final Map<String, dynamic> transaction;
  const ExpenseScreen({Key? key, /*required this.transaction*/} ) : super(key: key);

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
                ),
              ],
            ),
            const Gap(15),
            Row(
              children: [
                Text("Expenses", style: Styles.captionTextStyle,)
              ],
            ),
            const Gap(30),
            FittedBox(
                child: Container(

                    child : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("Total \nIncome\n\n{price}\$", style: Styles.incomeTextStyle,)
                            /*
                        Değerler doldurulacak
                       */
                          ],
                        ),
                        const Gap(10),
                        Column(
                          children: [
                            Text("Total \nExpense\n\n{price}\$", style: Styles.expenseTextStyle,)
                            /*
                        Değerler doldurulacak
                       */
                          ],
                        ),
                        const Gap(10),
                        Column(
                          children: [
                            Text("Total \nBudget\n\n{price}\$", style: Styles.budgetTextStyle,)
                            /*
                        Değerler doldurulacak
                       */
                          ],
                        )
                      ],
                    )
                )
            ),
            const Gap(10),
            CustomPaint(
              painter: LinePainter(),
              size: Size(200, 100),
            ), /* The black line that shows on the screen */
            const ListTile(
              shape: StadiumBorder(
                side: BorderSide(color: Colors.blue, width: 1),
              ),
              iconColor: Colors.blue,
              leading: Icon(
                Icons.shop,
                size: 30,
              ),
              title: Text('TypeOfTransaction'),
              subtitle: Text('Price'),
              trailing: Icon(
                Icons.play_arrow,
                size: 30,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Gap(5),
            const ListTile(
              shape: StadiumBorder(
                side: BorderSide(color: Colors.blue, width: 1),
              ),
              iconColor: Colors.blue,
              leading: Icon(
                Icons.shop,
                size: 30,
              ),
              title: Text('TypeOfTransaction'),
              subtitle: Text('Price'),
              trailing: Icon(
                Icons.play_arrow,
                size: 30,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Gap(5),
            const ListTile(
              shape: StadiumBorder(
                side: BorderSide(color: Colors.blue, width: 1),
              ),
              iconColor: Colors.blue,
              leading: Icon(
                Icons.shop,
                size: 30,
              ),
              title: Text('TypeOfTransaction'),
              subtitle: Text('Price'),
              trailing: Icon(
                Icons.play_arrow,
                size: 30,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      )

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