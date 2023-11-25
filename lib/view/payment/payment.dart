import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parker/common/colors.dart';
import 'package:parker/common/constants.dart';
import 'package:parker/common/widgets/primary_button.dart';
import 'package:parker/common/widgets/secondary_button.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: ColorStyles.primaryColor,
        title: Text(
          'E-Receipt',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: ColorStyles.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: height! / 3,
            color: ColorStyles.primaryColor,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                color: ColorStyles.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(
                      1,
                      1,
                    ),
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ],
                borderRadius: BorderRadius.circular(
                  8,
                ),
              ),
              height: height! / 3,
              width: width! / 1.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Total Amount Payable",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const Text(
                    "Rs. 500",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const Divider(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "User name",
                      ),
                      Text("Owner Name")
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: SecondaryButton(
                      text: "PAY",
                      onTap: () => {},
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
