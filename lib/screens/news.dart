import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chip_list/chip_list.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:qroute/components/boldText.dart';
import 'package:qroute/components/seeMoreRow.dart';
import 'package:google_fonts/google_fonts.dart';

class News extends StatefulWidget {
  static const String routName = "news";

  News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  int index = 0;
  int tag = 1;
  List<String> options = ['Discover', 'News', 'Most Viewed', 'Saved'];
  List<String> imagess = [
    'assets/images/banner1.png',
    'assets/images/banner2.png'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          padding: EdgeInsets.zero,
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: 12,
          child: BottomNavigationBar(
              currentIndex: index,
              onTap: (value) {
                index = value;
                setState(() {});
              },
              backgroundColor: Colors.white,
              elevation: 0,
              selectedItemColor: const Color(0xff5925DC),
              unselectedItemColor: Colors.grey.shade400,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.calendar_today_outlined,
                    size: 24,
                  ),
                  label: "Today",
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.grid_view,
                      size: 24,
                    ),
                    label: "Insights"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.chat_bubble_outline,
                      size: 24,
                    ),
                    label: "Chat"),

              ]),
        ),
        body: Column(
          children: [
            Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/flower.png"),
                          Text(
                            "AliceCare",style: GoogleFonts.milonga(fontSize: 24,fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10),
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Article, Video, Audio and More,....',
                          hintStyle: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16),
                          suffixStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ChipList(
                              listOfChipNames: options,
                              activeBgColorList: const [Color(0xffD6BBFB)],
                              inactiveBgColorList: const [Colors.white],
                              activeTextColorList: const [Color(0xff6941C6)],
                              inactiveTextColorList: const [Colors.black54],
                              listOfChipIndicesCurrentlySeclected: [0],
                              showCheckmark: false,
                              inactiveBorderColorList: [const Color(0xffE4E7EC)],
                              checkmarkColor: Colors.transparent,
                            ),
                          ],
                        ),
                      ),
                      SeeMoreRow(color: const Color(0xff027A48), text: "Hot Topics"),
                      CarouselSlider(
                        options: CarouselOptions(height: 160.0),
                        items: [0, 1].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                                  child: Image.asset(imagess[i]));
                            },
                          );
                        }).toList(),
                      ),
                      BoldText(text: "Get Tips"),const SizedBox(height: 16,),
                      Container(
                          width: double.infinity,
                          height: 196,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 24),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: const DecorationImage(
                                  fit: BoxFit.contain,
                                  alignment: Alignment.bottomLeft,
                                  image: AssetImage(
                                    "assets/images/doctor.png",
                                  )),
                              color: const Color(0xffEAECF5)),
                          child: Container(
                            margin: const EdgeInsets.only(left: 100),
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              'Connect with doctor &\nget Suggestions\n\n',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              wordSpacing: 2)),
                                      TextSpan(
                                        text:
                                            'Connect now and get\nexpert insights\n',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: const Color(0xff7F56D9),
                                    ),
                                    height: 36,
                                    width: 140,
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child: const Text(
                                          "ViewDetails",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color(0xff7F56D9),
                                            elevation: 0)
                                    )
                                )
                              ],
                            ),
                          )
                      ),const SizedBox(height: 16,),
                      SeeMoreRow(color: const Color(0xff5925DC), text: "Cycle Phases and period"),

                    ]
                )
            )
          ],
        ),
      ),
    );
  }
}
