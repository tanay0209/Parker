import 'package:flutter/material.dart';
import 'package:parker/common/colors.dart';
import 'package:parker/routes/route_functions.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  RoutingFunctions routeFunctions = RoutingFunctions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello, Ramesh',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Smooth Parking Ahead~",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Recommended Parking Areas",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                onTap: () {
                  routeFunctions.goToBookSlot();
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
                title: Text(
                  'Parking No 1',
                  style: TextStyle(
                    color: ColorStyles.white,
                  ),
                ),
                subtitle: Text(
                  'Location 1',
                  style: TextStyle(
                    color: ColorStyles.white,
                  ),
                ),
                tileColor: ColorStyles.primaryColor,
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
                title: Text(
                  'Parking No 2',
                  style: TextStyle(
                    color: ColorStyles.white,
                  ),
                ),
                subtitle: Text(
                  'Location 2',
                  style: TextStyle(
                    color: ColorStyles.white,
                  ),
                ),
                tileColor: ColorStyles.primaryColor,
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
                title: Text(
                  'Parking No 3',
                  style: TextStyle(
                    color: ColorStyles.white,
                  ),
                ),
                subtitle: Text(
                  'Location 3',
                  style: TextStyle(
                    color: ColorStyles.white,
                  ),
                ),
                tileColor: ColorStyles.primaryColor,
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
                title: Text(
                  'Parking No 4',
                  style: TextStyle(
                    color: ColorStyles.white,
                  ),
                ),
                subtitle: Text(
                  'Location 4',
                  style: TextStyle(
                    color: ColorStyles.white,
                  ),
                ),
                tileColor: ColorStyles.primaryColor,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
