import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:qroute/components/NavBarItems.dart';
import 'package:qroute/components/seeMoreRow.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class MentalApp extends StatefulWidget {
  static const String routName = "Mental";

  const MentalApp({super.key});

  @override
  State<MentalApp> createState() => _MentalAppState();
}

class _MentalAppState extends State<MentalApp> {
  int index = 0;

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
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.grey.shade400,
              items: [
                BottomNavigationBarItem(
                  icon: NavBarItems(selectedIndex: index,ownindex: 0, iconData: Icons.home,color: Colors.green,),
                  label: "",
                ),
                BottomNavigationBarItem(
                    icon: NavBarItems(selectedIndex: index,ownindex: 1, iconData: Icons.grid_view,color: Colors.green,),
                    label: ""),
                BottomNavigationBarItem(
                    icon: NavBarItems(selectedIndex: index,ownindex: 2, iconData: Icons.calendar_today_outlined,color: Colors.green,),
                    label: ""),
                BottomNavigationBarItem(
                    icon: NavBarItems(selectedIndex: index,ownindex: 3, iconData: Icons.person,color: Colors.green,),
                    label: "")
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
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        width: 24,
                        height: 24,
                      ),
                       Text(
                        "Moody",
                        style:TextStyle(fontFamily: 'kefa',fontSize: 24,fontWeight: FontWeight.w400)
                      ),
                      const Spacer(),
                      badges.Badge(
                        badgeContent: const Text(""),
                        position: badges.BadgePosition.topEnd(top: -8, end: -2),
                        child: const Icon(
                          Icons.notifications_none,
                          size: 24,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Hello,',
                        ),
                        TextSpan(
                          text: ' Sara Rose',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "How are you today ?",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildImageWithText('Love', 'assets/images/love.png'),
                      _buildImageWithText('cool', 'assets/images/cool.png'),
                      _buildImageWithText('Happy', 'assets/images/happy.png'),
                      _buildImageWithText('Sad', 'assets/images/sad.png'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  SeeMoreRow(color: const Color(0xff027A48), text: "Feature"),
                  const SizedBox(height: 16),
                  Container(
                      padding: const EdgeInsets.all(20),
                      height: 168,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xffECFDF3)),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Positive vipes",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff344054)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Boost our mood with\npositive vibes",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 24,
                                    width: 23,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color(0xff32D583)),
                                    child: const Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ),
                                  const Text(
                                    "10 mins",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ],
                          ),
                          const Spacer(),
                          Image.asset(
                            "assets/images/dog.png",
                            width: 102,
                            height: 90,
                            fit: BoxFit.fill,
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 16,
                  ),
                  const Center(
                    child: AnimatedSmoothIndicator(activeIndex: 0, count: 3,
                      effect: SlideEffect(
                          spacing:  8.0,
                          radius:  10,
                          dotWidth:  6,
                          dotHeight:  6,
                          paintStyle:  PaintingStyle.stroke,
                          strokeWidth:  1.5,
                          dotColor:  Color(0xffD9D9D9),
                          activeDotColor:  Color(0xff98A2B3)
                      ),
                    ),
                  ),
                  SeeMoreRow(color: const Color(0xff027A48), text: "Exercise")
                  ,const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildImageWithText2('Relaxation',
                          'assets/images/relax.png', const Color(0xffF9F5FF)),
                      _buildImageWithText2('Meditation',
                          'assets/images/med.png', const Color(0xffFDF2FA)),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildImageWithText2('Breathing',
                          'assets/images/breath.png', const Color(0xffFFFAF5)),
                      _buildImageWithText2('Yoga',
                          'assets/images/yoga.png', const Color(0xffF0F9FF)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildImageWithText(String text, String imagePath) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200], // Change the background color as needed
          ),
          child: Image.asset(
            imagePath,
            width: 20,
            height: 20,
            fit: BoxFit.scaleDown,
          ),
        ),
        SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildImageWithText2(String text, String imagePath, Color color) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: 151,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color, // Change the background color as needed
      ),
      child: Row(
        children: [
          ClipRRect(
            child: Image.asset(
              imagePath,
              width: 30,
              height: 30,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
