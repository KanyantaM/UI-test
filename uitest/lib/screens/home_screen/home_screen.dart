import 'package:flutter/material.dart';
import 'package:flutter_faq/flutter_faq.dart';
import 'package:uitest/screens/home_screen/sections/footer.dart';
import 'package:uitest/screens/home_screen/sections/header.dart';
import 'package:uitest/screens/home_screen/sections/latest_blogs.dart';
import 'package:uitest/screens/home_screen/sections/links.dart';
import 'package:uitest/screens/home_screen/sections/why_choose_us.dart';

import '../../constants/home_page_images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    List isHovering = [false, false, false, false];

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Image.asset(
                logo,
                width: 129,
                height: 28,
                fit: BoxFit.contain,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          isHovering[0] = value;
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Discover',
                            style: TextStyle(
                              color: isHovering[0]
                                  ? Colors.blue.shade200
                                  : Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          // For showing an underline on hover
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: isHovering[0],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 20),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          isHovering[1] = value;
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Contact Us',
                            style: TextStyle(
                              color: isHovering[1]
                                  ? Colors.blue.shade200
                                  : Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5),
                          // For showing an underline on hover
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: isHovering[1],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: const Color.fromARGB(255, 253, 226, 226),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    isHovering[2] = value;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'SignUp',
                      style: TextStyle(
                        color: isHovering[2] ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    isHovering[3] = value;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        color: isHovering[3] ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Align(
              alignment: Alignment.center,
              child: HeaderLandingPage(),
            ),
            const WhyChooseUs(),
            const LatestBlogPosts(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 0, 5),
              child: Text(
                "Frequently asked questions",
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
            // const FAQList(),
            const FAQ(
              question: "Who built the UI?",
              answer: "kanyanta",
              expandedIcon: Icon(Icons.minimize),
              collapsedIcon: Icon(Icons.add),
            ),
            const Links(),
            const Divider(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
