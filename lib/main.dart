import 'package:flutter/material.dart';
import 'package:portfolio_website/about_page.dart';
import 'package:portfolio_website/awards_page.dart';
import 'package:portfolio_website/education_page.dart';
import 'package:portfolio_website/experience_page.dart';
import 'package:portfolio_website/projects_page.dart';
import 'package:portfolio_website/skills_page.dart';
import 'package:portfolio_website/styles.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio Website',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue, primary: const Color(0xFF2A94D4)),
        fontFamily: 'Museo Sans',
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.sizeOf(context).width >= 1100;

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: isScreenWide
            ? AppBar(
                centerTitle: false,
                automaticallyImplyLeading: false,
                titleSpacing: 0,
                elevation: 0,
                backgroundColor: Colors.transparent,
                bottom: const PreferredSize(
                    preferredSize: Size.fromHeight(0),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: TabBar(
                            splashBorderRadius:
                                BorderRadius.all(Radius.circular(5)),
                            splashFactory: NoSplash.splashFactory,
                            //indicatorColor: Colors.yellow,
                            dividerColor: Colors.transparent,
                            tabAlignment: TabAlignment.start,
                            isScrollable: true,
                            labelPadding: EdgeInsets.symmetric(horizontal: 30),
                            tabs: <Tab>[
                              Tab(text: "About"),
                              Tab(text: "Experience"),
                              Tab(text: "Projects"),
                              Tab(text: "Education"),
                              Tab(text: "Skills"),
                              Tab(text: "Awards")
                            ]))))
            : null, // if not screenwide, don't create appbar
        // add icon that shows you can scroll vertically in mobile version
        body: isScreenWide
            ? Stack(children: [
                WaveWidget(
                  config: CustomConfig(gradients: [
                    [Color(0xFF4AC8F6), Color(0xFF4AC8F6)],
                    [Color(0xFF024273), Color(0xFF024273)],
                    [Color(0xFF3194BD), Color(0xFF1D5F89)],
                    [Color(0xFF1AC0E5), Color(0xFF167EC1)]
                  ], durations: [
                    3500,
                    19440,
                    10800,
                    6000
                  ], heightPercentages: [
                    -0.05,
                    0.1,
                    0.05,
                    0.10
                  ]),
                  size: const Size(double.infinity, double.infinity),
                ),
                const TabBarView(
                  children: [
                    AboutPage(),
                    ExperiencePage(),
                    ProjectsPage(),
                    EducationPage(),
                    SkillsPage(),
                    AwardsPage(),
                  ],
                )
              ])
            : const SingleChildScrollView(
                child: Column(
                children: [
                  AboutPage(),
                  ExperiencePage(),
                  ProjectsPage(),
                  EducationPage(),
                  SkillsPage(),
                  AwardsPage()
                ],
              )),
        bottomNavigationBar: Theme(
            data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                canvasColor: Colors.transparent,
                dialogBackgroundColor: Colors.transparent,
                scaffoldBackgroundColor: Colors.transparent),
            child: BottomNavigationBar(
              backgroundColor:
                  isScreenWide ? Color(0xFF1AC0E5) : Colors.transparent,
              fixedColor: Colors.transparent,
              useLegacyColorScheme: false,
              landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
              elevation: 0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: isScreenWide
                  ? const [
                      BottomNavigationBarItem(
                          icon: Text("", style: BasicText.basicLight),
                          label: ""),

                      BottomNavigationBarItem(
                          icon: Text("© 2024 Victoria Tran",
                              style: BasicText.basicLight),
                          label: ""),
                      BottomNavigationBarItem(
                          icon: Text("", style: BasicText.basicLight),
                          label: ""),

                      // BottomNavigationBarItem(
                      //     icon: Text(
                      //       "Privacy Policy",
                      //       style: BasicText.basic,
                      //     ),
                      //     label: ""),
                      // BottomNavigationBarItem(
                      //     icon: Text("User Agreement and Terms of Service",
                      //         style: BasicText.basic),
                      //     label: ""),
                    ]
                  : const [
                      BottomNavigationBarItem(icon: Text(""), label: ""),

                      BottomNavigationBarItem(
                          icon: Text("© 2024 Victoria Tran"), label: ""),
                      BottomNavigationBarItem(icon: Text(""), label: ""),

                      // BottomNavigationBarItem(
                      //     icon: Text(
                      //       "Privacy Policy",
                      //       style: BasicText.basic,
                      //     ),
                      //     label: ""),
                      // BottomNavigationBarItem(
                      //     icon: Text("User Agreement and Terms of Service",
                      //         style: BasicText.basic),
                      //     label: ""),
                    ],
              selectedLabelStyle:
                  isScreenWide ? BasicText.basicLight : BasicText.basicDark,
              unselectedLabelStyle:
                  isScreenWide ? BasicText.basicLight : BasicText.basicDark,
            )),
      ),
    );
  }
}
