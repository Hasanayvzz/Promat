import 'package:promat/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grock/grock.dart';
import 'package:promat/view/cart.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({
    Key? key,
  })  : preferredSize = const Size.fromHeight(55),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Constant.white,
      iconTheme: const IconThemeData(color: Colors.black),
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Promat",
            style: TextStyle(
                letterSpacing: 2,
                color: Constant.black,
                fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: Colors.blue.shade400,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Cart()));
                  },
                  child: const Text("Sepet")),
              const SizedBox(
                width: 5,
              ),
              Container(
                padding: 12.allP,
                child: SvgPicture.asset(
                  "assets/icons/ic_search.svg",
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
