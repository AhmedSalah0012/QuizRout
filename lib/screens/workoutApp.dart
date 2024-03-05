import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:qroute/components/NavBarItems.dart';
import 'package:qroute/components/boldText.dart';

class WorkoutApp extends StatefulWidget {
  WorkoutApp({super.key});

  static const String routName = "workout";

  @override
  State<WorkoutApp> createState() => _WorkoutAppState();
}

class _WorkoutAppState extends State<WorkoutApp> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            padding: EdgeInsets.zero,
            color: Colors.white,
            shape: CircularNotchedRectangle(),
            notchMargin: 12,
            child: BottomNavigationBar(
                currentIndex: index,
                onTap: (value) {
                  index = value;
                  setState(() {});
                },
                backgroundColor: Colors.white,
                elevation: 0,
                selectedItemColor: Color(0xff363F72),
                unselectedItemColor: Colors.grey.shade400,
                items: [
                  BottomNavigationBarItem(
                    icon: NavBarItems(color: Color(0xff363F72),ownindex: 0,iconData: Icons.home,selectedIndex: index)
                    ,label: "",
                  ),
                  BottomNavigationBarItem(
                      icon: NavBarItems(color: Color(0xff363F72),ownindex: 1,iconData: Icons.navigation,selectedIndex: index)
        ,
                      label: ""),
                  BottomNavigationBarItem(
                      icon: NavBarItems(color: Color(0xff363F72),ownindex: 2,iconData:Icons.insert_chart_outlined_sharp,selectedIndex: index)
,
                      label: ""),
                  BottomNavigationBarItem(
                      icon: NavBarItems(color: Color(0xff363F72),ownindex: 3,iconData: Icons.person,selectedIndex: index)
,
                      label: "")
                ]),
          ),
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            "assets/images/jade.png",
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black, fontSize: 20),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Hello, jade\n',
                              ),
                              TextSpan(
                                text: 'Ready to workout ?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                         badges.Badge(
                            badgeContent: Text(""),
                            position: badges.BadgePosition.topEnd(top: -8, end: -2),
                            child: Icon(
                              Icons.notifications_none,
                              size: 24,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding:EdgeInsets.all(8),
                        decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),color: const Color(0xffF8F9FC)
                    ),child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        _buildImageWithText("Heart Rate", Icons.favorite_border, "81", "BPM"),
                          const VerticalDivider(
                            color: Color(0xffD9D9D9),width: 10,
                            thickness: 1,
                          ),
                        _buildImageWithText("To-do", Icons.list, "32,5", "%"),
                          const VerticalDivider(
                            color: Color(0xffD9D9D9),width: 10,
                            thickness: 1,
                          ),
                        _buildImageWithText("Calo", Icons.local_fire_department_outlined, "1000", "Cal"),
                      ],),
                    ),),
                    const SizedBox(height: 16,),
                    BoldText(text: "Workout Programs"),
                    const SizedBox(height: 16,),
      
          SizedBox(
          height: 50,
          child: AppBar(
            bottom: const TabBar(
              labelColor: Color(0xff363F72),
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                   child: Text("All type"),
                ),
              Tab(
                child: Text("Full Body"),
              ),
                Tab(
                  child: Text("Upper"),
                ),
                Tab(
                  child: Text("Lower",),
                ),]),)),SizedBox(height: 16),
                    Container(
                        padding: EdgeInsets.all(20),
                        height: 168,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xffEAECF5)),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  height: 36,
                                  width: 68,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white
                                  ),
                                  child: Text(
                                    "7 days",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff344054)),
                                  ),
                                ),SizedBox(height: 10,),
                                Text(
                                  "Morning Yoga",
                                  style: TextStyle(
                                      fontSize: 20,fontWeight: FontWeight.w600
                                  ),
                                ),Text(
                                  "Improve mental focus.",
                                  style: TextStyle(
                                      fontSize: 12,fontWeight: FontWeight.w400
                                  ),
                                ),SizedBox(height: 10,),
                                Row(children: [
                                  Icon(Icons.access_time),
                                  Text("30 mins",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),)
                                ],)
                              ],
                            ),Spacer(),
                            Image.asset(
                              "assets/images/girl.png",
                              width: 146,
                              height: 118,
                              fit: BoxFit.fill,
                            ),

                          ],
                        )),SizedBox(height: 16,),
                    Container(
                        padding: EdgeInsets.all(20),
                        height: 168,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color(0xffEAECF5)),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  height: 36,
                                  width: 68,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white
                                  ),
                                  child: Text(
                                    "3 days",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff344054)),
                                  ),
                                ),const SizedBox(height: 10,),
                                Text(
                                  "Plank Exercise",
                                  style: TextStyle(
                                      fontSize: 20,fontWeight: FontWeight.w600
                                  ),
                                ),const Text(
                                  "Improve posture and stability.",
                                  style: TextStyle(
                                      fontSize: 12,fontWeight: FontWeight.w400
                                  ),
                                ),const SizedBox(height: 10,),
                                const Row(children: [
                                  Icon(Icons.access_time),
                                  Text("30 mins",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),)
                                ],)
                              ],
                            ),
                            Image.asset(
                              "assets/images/stretch.png",
                              width: 148,
                              height: 125,
                              fit: BoxFit.fill,
                            ),

                          ],
                        )),const SizedBox(height: 16,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageWithText(
      String text1, IconData icon, String text2, String text3) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: const Color(0xff717BBC),
            ),
            Text(
              text1,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
            )
          ],
        ),const SizedBox(height: 4,),
        RichText(
          text: TextSpan(
            style: const TextStyle(color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                  text: text2,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              TextSpan(
                text: text3,
                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
