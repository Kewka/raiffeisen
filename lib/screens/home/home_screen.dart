import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/category.dart';

import './widgets/category_tile.dart';
import './widgets/credit_card.dart';
import './widgets/home_panel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final categories = <Category>[
    Category(
        id: 1,
        title: 'Shopping',
        icon: Icons.shopping_basket,
        color: Colors.blue.shade300,
        totalPrice: 320.23,
        count: 3),
    Category(
        id: 2,
        title: 'Entertaiment',
        icon: Icons.headset,
        color: Colors.purple.shade700,
        totalPrice: 100,
        count: 4),
    Category(
        id: 3,
        title: 'Commuting',
        icon: Icons.drive_eta,
        color: Colors.pink.shade300,
        totalPrice: 220.59,
        count: 2),
    Category(
        id: 4,
        title: 'Food & Drinks',
        icon: Icons.fastfood,
        color: Colors.red.shade800,
        totalPrice: 150,
        count: 5),
    Category(
        id: 5,
        title: 'Gym',
        icon: Icons.fitness_center,
        color: Colors.red.shade800,
        totalPrice: 150,
        count: 2)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: buildAppBar(),
      body: Container(
        child: Column(children: [
          SizedBox(height: 16),
          Expanded(child: CreditCard()),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: SvgPicture.asset('assets/icons/terminal.svg'),
              ),
              Text(
                'Hold your phone near the terminal',
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
          SizedBox(height: 24),
          Expanded(
            flex: 2,
            child: HomePanel(
              child: ListView(
                  padding: const EdgeInsets.all(24),
                  physics: BouncingScrollPhysics(),
                  children: [
                    Padding(
                      child: Text('Transactions',
                          style: Theme.of(context).textTheme.headline6),
                      padding: EdgeInsets.only(bottom: 16),
                    ),
                    ...categories
                        .map((category) => CategoryTile(category: category))
                  ]),
            ),
          )
        ]),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {},
      ),
      centerTitle: true,
      title: SvgPicture.asset('assets/icons/logo.svg'),
      actions: [IconButton(icon: Icon(Icons.add), onPressed: () {})],
    );
  }
}
