import 'package:dixshopp/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'component/category.dart';
import 'component/searchform.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icon/Category.svg'),
        ),
        title: Center(
          child: SvgPicture.asset('assets/icon/name.svg'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icon/Notification.svg'),
          )
        ],
      ),
      body: Container(
        color: Constant.bgColor,
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            SearchForm(),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Category(
                  img: 'assets/icon/snk.png',
                  title: 'Sneakers',
                  color: Colors.black,
                  txtColor: Colors.white,
                  padding: 0,
                ),
                Category(
                  img: 'assets/icon/shirt.png',
                  title: 'T-Shirt',
                  color: Colors.white,
                  txtColor: Colors.black,
                  padding: 13,
                ),
                Category(
                  img: 'assets/icon/bag.png',
                  title: 'Backpack',
                  color: Colors.white,
                  txtColor: Colors.black,
                  padding: 10,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}


