// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walet_app/utils/big_card.dart';
import 'package:walet_app/utils/bottom_card_with_name.dart';
import 'package:walet_app/utils/small_middel_card.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {},
          backgroundColor: Colors.pink,
          child: Icon(
            Icons.monetization_on,
            size: 32,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.home,
                size: 44,
                color: Colors.pink,
              ),
              Icon(
                Icons.settings,
                size: 44,
                color: Colors.grey[800],
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              // App bar here
              _appBarSection(),
              SizedBox(
                height: 35,
              ),

              // cards
              _topCardSection(),

              SizedBox(
                height: 20,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade800,
                ),
              ),

              SizedBox(
                height: 20,
              ),

              // smaller horizontal cards
              _smallMiddleCards(),

              // smaller vertical cards with title and icons
              _bottomVerticalCard(),
            ],
          ),
        ),
      ),
    );
  }

  Expanded _bottomVerticalCard() {
    return Expanded(
      child: ListView(
        children: [
          BottomCardWithName(
            iconImage: 'lib/icons/transaction.png',
            name: "Statistic",
            detail: "Payment and Income",
            color: Colors.deepPurple,
          ),
          BottomCardWithName(
            iconImage: 'lib/icons/act.png',
            name: "Transactions",
            detail: "Transaction history",
            color: const Color.fromARGB(255, 21, 202, 222),
          ),
          BottomCardWithName(
            iconImage: 'lib/icons/graph.png',
            name: "Analytic",
            detail: "Balance flow analytics",
            color: const Color.fromARGB(255, 95, 167, 14),
          ),
        ],
      ),
    );
  }

  Container _smallMiddleCards() {
    return Container(
      height: 150,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SmallMiddelCard(
            image: 'lib/icons/share.png',
            text: 'Send',
          ),
          SmallMiddelCard(
            image: 'lib/icons/balance.png',
            text: 'Balance',
          ),
          SmallMiddelCard(
            image: 'lib/icons/bill.png',
            text: 'Bills',
          ),
          SmallMiddelCard(
            image: 'lib/icons/purse.png',
            text: "Purse",
          ),
          SmallMiddelCard(
            image: 'lib/icons/verification.png',
            text: 'Detail',
          ),
        ],
      ),
    );
  }

  Container _topCardSection() {
    return Container(
      height: 200, // Set an appropriate height
      padding: EdgeInsets.symmetric(horizontal: 20),

      child: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          BigCard(
            balance: 245245.52,
            cardNumber: 12345678,
            expireMonth: 10,
            expireYear: 24,
            color: Colors.deepPurple[300],
          ),
          BigCard(
            balance: 245245.52,
            cardNumber: 12345678,
            expireMonth: 10,
            expireYear: 24,
            color: const Color.fromARGB(255, 89, 2, 239),
          ),
          BigCard(
            balance: 42552.52,
            cardNumber: 562462462,
            expireMonth: 1,
            expireYear: 30,
            color: Colors.greenAccent,
          ),
        ],
      ),
    );
  }

  Padding _appBarSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "My",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
              ),
              const SizedBox(width: 14),
              const Text(
                "Cards",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(255, 149, 216, 220)),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
