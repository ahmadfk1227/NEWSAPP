import 'package:flutter/material.dart';
import 'package:newsapp/Data/Cubits/get_news_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class ThirdtScreen extends StatelessWidget {
  int index;
  ThirdtScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xFFFF3A44),
            child: const Icon(Icons.heart_broken_rounded),
          ),
        ),
        backgroundColor: Colors.white,
        body: BlocBuilder<GetNewsCubit, GetNewsState>(
        builder: (context, state) {
      return Stack(
          children: [
      Container(
      decoration: BoxDecoration(
      image: DecorationImage(
      image: NetworkImage(state
          .response.articles[index].urlToImage ??
          "https://media.istockphoto.com/id/1264074047/vector/breaking-news-background.jpg?s=612x612&w=0&k=20&c=C5BryvaM-X1IiQtdyswR3HskyIZCqvNRojrCRLoTN0Q="),
    fit: BoxFit.fill,
    ),
    ),
    ),
    Align(
    alignment: Alignment.bottomCenter,
    child: Container(
    decoration: const BoxDecoration(
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(24),
    topRight: Radius.circular(24)),
    color: Colors.white,
    ),
    height: MediaQuery.of(context).size.height * 0.55,
    width: MediaQuery.of(context).size.height * 1,
    child: const Padding(
    padding: EdgeInsets.only(
    top: 90, left: 20, right: 20, bottom: 20),
    child: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    'LONDON',
    style: TextStyle(
    fontFamily: 'Nunito-Bold',
    fontSize: 14,
    fontWeight: FontWeight.w900,
    color: Color(0xff2E0505),
    decoration: TextDecoration.none),
    ),
    Text(
    ' — Cryptocurrencies “have no intrinsic value” and people who invest in them should be prepared to lose all their money, Bank of England Governor Andrew Bailey said.\n\nDigital currencies like bitcoin, ether and even dogecoin have been on a tear this year, reminding some investors of the 2017 crypto bubble in which bitcoin blasted toward ,000, only to sink as low as ,122 a year later.\n\nAsked at a press conference Thursday about the rising value of cryptocurrencies, Bailey said: “They have no intrinsic value. That doesn’t mean to say people don’t put value on them, because they can have extrinsic value. But they have no intrinsic value."\n\nut they have no intrinsic value.” “I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.” Bailey’s comments echoed a similar warning from the U.K.’s Financial Conduct Authority. “Investing in cryptoassets, or investments and lending linked to them, generally involves taking very high risks with investors’ money,” the financial services watchdog said in January. “If consumers invest in these types of product, they should be prepared to lose all their money.” Bailey, who was formerly the chief executive of the FCA, has long been a skeptic of crypto. In 2017, he warned: “If you want to invest in bitcoin, be prepared to lose all your money.”',
    style: TextStyle(fontFamily: 'Nunito-Bold',
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color(0xff2E0505),
        decoration: TextDecoration.none),
    ),
    ],
    ),
    ),
    ),
    ),
    ),
            Padding(
              padding: const EdgeInsets.only(bottom: 97),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 145,
                  width: 311,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: const Color.fromARGB(255, 223, 222, 222)
                        .withOpacity(0.9), // Set the color with opacity
                  ),
                  child: Padding(
                    padding:
                    const EdgeInsets.only(left: 20, top: 15, right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: [
                                const TextSpan(
                                  text: 'Sunday, 9 May 2021\n',
                                  style: TextStyle(
                                      fontFamily: 'Nunito-Bold',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff2E0505),
                                      decoration: TextDecoration.none),
                                ),
                                TextSpan(
                                  text: state.response.articles[index].title,
                                  style: const TextStyle(
                                      fontFamily: 'NewYorkSmallRegular',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff2E0505),
                                      decoration: TextDecoration.none),
                                ),
                                const TextSpan(
                                  text: '\n',
                                ),
                                TextSpan(
                                  text: state.response.articles[index].author,
                                  style: const TextStyle(
                                      fontFamily: 'Nunito-Bold',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xff2E0505),
                                      decoration: TextDecoration.none),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
      );
        },
        ),
    );
  }
}