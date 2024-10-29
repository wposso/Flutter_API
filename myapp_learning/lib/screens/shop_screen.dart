// ignore_for_file: avoid_unnecessary_containers, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp_learning/widgets/widgets.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog.fullscreen(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'shopPage');
                                  },
                                  icon: const FaIcon(FontAwesomeIcons.arrowLeft)),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              "Your's items",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10),
                            child: Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    SlidableWidget(
                                        tittle: 'Nike Air Max 270',
                                        subtittle: '\$150.00',
                                        picture:
                                            FaIcon(FontAwesomeIcons.githubAlt)),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    SlidableWidget(
                                        tittle: 'Adidas Ultraboost',
                                        subtittle: '\$180.00',
                                        picture:
                                            FaIcon(FontAwesomeIcons.githubAlt)),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    SlidableWidget(
                                        tittle: 'Puma RS-X',
                                        subtittle: '\$130.00',
                                        picture:
                                            FaIcon(FontAwesomeIcons.githubAlt)),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    SlidableWidget(
                                        tittle: 'Puma RS-X',
                                        subtittle: '\$130.00',
                                        picture:
                                            FaIcon(FontAwesomeIcons.githubAlt)),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    SlidableWidget(
                                        tittle: 'Puma RS-X',
                                        subtittle: '\$130.00',
                                        picture:
                                            FaIcon(FontAwesomeIcons.githubAlt)),
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    SlidableWidget(
                                        tittle: 'Puma RS-X',
                                        subtittle: '\$130.00',
                                        picture:
                                            FaIcon(FontAwesomeIcons.githubAlt)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              icon: const FaIcon(FontAwesomeIcons.archive),
              color: Colors.white,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, 'homePage');
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Men's shoes",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IntrinsicHeight(
                            child: CardWidget(
                              picture: FaIcon(
                                FontAwesomeIcons.githubAlt,
                                size: 60,
                                color: Colors.green,
                              ),
                              tittle: 'Nike Air Max 270',
                              subtittle: '\$150.00',
                            ),
                          ),
                          IntrinsicHeight(
                            child: CardWidget(
                              picture: FaIcon(
                                FontAwesomeIcons.githubAlt,
                                size: 60,
                                color: Colors.amber,
                              ),
                              tittle: 'Adidas Ultraboost',
                              subtittle: '\$180.00',
                            ),
                          ),
                          IntrinsicHeight(
                            child: CardWidget(
                              picture: FaIcon(
                                FontAwesomeIcons.githubAlt,
                                size: 60,
                                color: Colors.purple,
                              ),
                              tittle: 'Puma RS-X',
                              subtittle: '\$130.00',
                            ),
                          ),
                          IntrinsicHeight(
                            child: CardWidget(
                              picture: FaIcon(
                                FontAwesomeIcons.githubAlt,
                                size: 60,
                                color: Colors.blue,
                              ),
                              tittle: 'Jordan 1 Retro',
                              subtittle: '\$200.00',
                            ),
                          ),
                          IntrinsicHeight(
                            child: CardWidget(
                              picture: FaIcon(
                                FontAwesomeIcons.githubAlt,
                                size: 60,
                                color: Colors.pink,
                              ),
                              tittle: 'Jordan 1 Retro',
                              subtittle: '\$200.00',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IntrinsicHeight(
                            child: CardWidget(
                              picture: FaIcon(
                                FontAwesomeIcons.githubAlt,
                                size: 60,
                                color: Colors.cyan,
                              ),
                              tittle: 'New Balance 574',
                              subtittle: '\$110.00',
                            ),
                          ),
                          IntrinsicHeight(
                            child: CardWidget(
                              picture: FaIcon(
                                FontAwesomeIcons.githubAlt,
                                size: 60,
                                color: Colors.yellow,
                              ),
                              tittle: 'Vans Old Skool',
                              subtittle: '\$65.00',
                            ),
                          ),
                          IntrinsicHeight(
                            child: CardWidget(
                              picture: FaIcon(
                                FontAwesomeIcons.githubAlt,
                                size: 60,
                                color: Colors.cyan,
                              ),
                              tittle: 'Jordan 1 Retro',
                              subtittle: '\$200.00',
                            ),
                          ),
                          IntrinsicHeight(
                            child: CardWidget(
                              picture: FaIcon(
                                FontAwesomeIcons.githubAlt,
                                size: 60,
                                color: Colors.green,
                              ),
                              tittle: 'Jordan 1 Retro',
                              subtittle: '\$200.00',
                            ),
                          ),
                          IntrinsicHeight(
                            child: CardWidget(
                              picture: FaIcon(
                                FontAwesomeIcons.githubAlt,
                                size: 60,
                                color: Colors.purple,
                              ),
                              tittle: 'Jordan 1 Retro',
                              subtittle: '\$200.00',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const FooterWidget(
        finalIndex: 1,
      ),
    );
  }
}
