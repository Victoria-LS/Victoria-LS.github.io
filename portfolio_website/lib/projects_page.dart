import 'package:flutter/material.dart';
import 'package:portfolio_website/cyber_chronicles_pj.dart';
import 'package:portfolio_website/code_cruiser_pj.dart';
import 'package:portfolio_website/datalake_pj.dart';
import 'package:portfolio_website/multus_medium_pj.dart';
import 'package:portfolio_website/styles.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  bool firstIsHovering = false;
  bool secondIsHovering = false;
  bool thirdIsHovering = false;
  bool fourthIsHovering = false;

  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.sizeOf(context).width >= 1100;

    return isScreenWide
        // WEB VIEW --------------------------------------------------------------------------------
        ? Align(
            alignment: Alignment.topLeft,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Projects", style: HeaderOneText.header))),
              const SizedBox(height: 10),
              Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Click on a project to see more details",
                          style: isScreenWide
                              ? SubheadingText.subheaderLight
                              : SubheadingText.subheader))),
              const SizedBox(height: 5),

              // Project 1
              Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 50),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const CodeCruiserPJ()));
                                },
                                onHover: (value) {
                                  setState(() {
                                    firstIsHovering = value;
                                  });
                                },
                                child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    transform: Matrix4.identity()
                                      ..scale(firstIsHovering ? 1.1 : 1.0),
                                    transformAlignment: Alignment.center,
                                    child: Container(
                                        height: 250,
                                        width: 450,
                                        decoration: BoxDecoration(boxShadow: [
                                          BoxShadow(
                                            color: Colors.blue.withOpacity(0.2),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: const Offset(3, 5),
                                          )
                                        ]),
                                        alignment: Alignment.center,
                                        child: Column(children: [
                                          ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(8),
                                                      topRight:
                                                          Radius.circular(8)),
                                              child: Image.asset(
                                                  width: 450,
                                                  height: 150,
                                                  "../web/images/landing.jpg",
                                                  fit: BoxFit.fill)),
                                          Container(
                                              height: 100,
                                              width: 450,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  8),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  8))),
                                              child: const Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 15),
                                                            child: Text(
                                                                "Code Cruiser",
                                                                style: HeaderTwoText
                                                                    .header))),
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 15),
                                                            child: Text(
                                                                "Processes of OO Software Class Project",
                                                                style: SubheadingText
                                                                    .subheader))),
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 15),
                                                            child: Text(
                                                                "Jan 2024 - Apr 2024",
                                                                style: BasicText
                                                                    .basicDark))),
                                                  ]))
                                        ]))))
                          ],
                        ),

                        const SizedBox(width: 200),

                        // Project 2
                        Column(
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const CyberChroniclesPj()));
                                },
                                onHover: (value) {
                                  setState(() {
                                    secondIsHovering = value;
                                  });
                                },
                                child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    transform: Matrix4.identity()
                                      ..scale(secondIsHovering ? 1.1 : 1.0),
                                    transformAlignment: Alignment.center,
                                    child: Container(
                                        height: 250,
                                        width: 450,
                                        decoration: BoxDecoration(boxShadow: [
                                          BoxShadow(
                                            color: Colors.blue.withOpacity(0.2),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: const Offset(3, 5),
                                          )
                                        ]),
                                        alignment: Alignment.center,
                                        child: Column(children: [
                                          ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(8),
                                                      topRight:
                                                          Radius.circular(8)),
                                              child: Image.asset(
                                                  width: 450,
                                                  height: 150,
                                                  "../web/images/codechronicles.jpg",
                                                  fit: BoxFit.fill)),
                                          Container(
                                              height: 100,
                                              width: 450,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  8),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  8))),
                                              child: const Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 15),
                                                            child: Text(
                                                                "Cyber Chronicles",
                                                                style: HeaderTwoText
                                                                    .header))),
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 15),
                                                            child: Text(
                                                                "Interactive Design Project",
                                                                style: SubheadingText
                                                                    .subheader))),
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 15),
                                                            child: Text(
                                                                "Jan 2024 - Feb 2024",
                                                                style: BasicText
                                                                    .basicDark))),
                                                  ]))
                                        ]))))
                          ],
                        ),
                      ])),

              // Project 3
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DatalakePj()));
                        },
                        onHover: (value) {
                          setState(() {
                            thirdIsHovering = value;
                          });
                        },
                        child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            transform: Matrix4.identity()
                              ..scale(thirdIsHovering ? 1.1 : 1.0),
                            transformAlignment: Alignment.center,
                            child: Container(
                                height: 250,
                                width: 450,
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    color: Colors.blue.withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(3, 5),
                                  )
                                ]),
                                alignment: Alignment.center,
                                child: Column(children: [
                                  ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8)),
                                      child: Image.asset(
                                          width: 450,
                                          height: 150,
                                          "../web/images/datalake.jpg",
                                          fit: BoxFit.fill)),
                                  Container(
                                      height: 100,
                                      width: 450,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(8),
                                              bottomRight: Radius.circular(8))),
                                      child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15),
                                                    child: Text(
                                                        "Datalake Event Schema",
                                                        style: HeaderTwoText
                                                            .header))),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15),
                                                    child: Text(
                                                        "Snap One Internship Final Project",
                                                        style: SubheadingText
                                                            .subheader))),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15),
                                                    child: Text("Jul 2023",
                                                        style: BasicText
                                                            .basicDark))),
                                          ]))
                                ]))))
                  ],
                ),

                const SizedBox(width: 200),

                // Project 4
                Column(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const MultusMediumPj()));
                        },
                        onHover: (value) {
                          setState(() {
                            fourthIsHovering = value;
                          });
                        },
                        child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            transform: Matrix4.identity()
                              ..scale(fourthIsHovering ? 1.1 : 1.0),
                            transformAlignment: Alignment.center,
                            child: Container(
                                height: 250,
                                width: 450,
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    color: Colors.blue.withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(3, 5),
                                  )
                                ]),
                                alignment: Alignment.center,
                                child: Column(children: [
                                  ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8)),
                                      child: Image.asset(
                                          width: 450,
                                          height: 150,
                                          "../web/images/multusmedium.jpg",
                                          fit: BoxFit.fill)),
                                  Container(
                                      height: 100,
                                      width: 450,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(8),
                                            bottomRight: Radius.circular(8)),
                                      ),
                                      child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15),
                                                    child: Text("Multus Medium",
                                                        style: HeaderTwoText
                                                            .header))),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15),
                                                    child: Text(
                                                        "AI@UCF Project",
                                                        style: SubheadingText
                                                            .subheader))),
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 15),
                                                    child: Text(
                                                        "Sep 2022 - Jan 2023",
                                                        style: BasicText
                                                            .basicDark))),
                                          ]))
                                ]))))
                  ],
                ),
              ])
            ]))

        // MOBILE VIEW --------------------------------------------------------------------------------
        : Align(
            alignment: Alignment.topLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Projects", style: HeaderOneText.header))),
                const SizedBox(height: 10),
                const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Click on a project to see more details",
                            style: SubheadingText.subheader))),
                const SizedBox(height: 25),

                // Project 1
                Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 50),
                    child: Column(children: [
                      Column(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CodeCruiserPJ()));
                              },
                              onHover: (value) {
                                setState(() {
                                  firstIsHovering = value;
                                });
                              },
                              child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  transform: Matrix4.identity()
                                    ..scale(firstIsHovering ? 1.1 : 1.0),
                                  transformAlignment: Alignment.center,
                                  child: Container(
                                      height: 250,
                                      width: 450,
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Colors.blue.withOpacity(0.2),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(3, 5),
                                        )
                                      ]),
                                      alignment: Alignment.center,
                                      child: Column(children: [
                                        ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft: Radius.circular(8),
                                                    topRight:
                                                        Radius.circular(8)),
                                            child: Image.asset(
                                                width: 450,
                                                height: 150,
                                                "../web/images/landing.jpg",
                                                fit: BoxFit.fill)),
                                        Container(
                                            height: 100,
                                            width: 450,
                                            decoration: const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(8),
                                                    bottomRight:
                                                        Radius.circular(8))),
                                            child: const Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15),
                                                          child: Text(
                                                              "Code Cruiser",
                                                              style: HeaderTwoText
                                                                  .headerLight))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15),
                                                          child: Text(
                                                              "Processes of OO Software Class Project",
                                                              style: SubheadingText
                                                                  .subheader))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15),
                                                          child: Text(
                                                              "Jan 2024 - Apr 2024",
                                                              style: BasicText
                                                                  .basicDark))),
                                                ]))
                                      ]))))
                        ],
                      ),
                      const SizedBox(height: 50),

                      // Project 2
                      Column(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CyberChroniclesPj()));
                              },
                              onHover: (value) {
                                setState(() {
                                  secondIsHovering = value;
                                });
                              },
                              child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  transform: Matrix4.identity()
                                    ..scale(secondIsHovering ? 1.1 : 1.0),
                                  transformAlignment: Alignment.center,
                                  child: Container(
                                      height: 250,
                                      width: 450,
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Colors.blue.withOpacity(0.2),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(3, 5),
                                        )
                                      ]),
                                      alignment: Alignment.center,
                                      child: Column(children: [
                                        ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft: Radius.circular(8),
                                                    topRight:
                                                        Radius.circular(8)),
                                            child: Image.asset(
                                                width: 450,
                                                height: 150,
                                                "../web/images/codechronicles.jpg",
                                                fit: BoxFit.fill)),
                                        Container(
                                            height: 100,
                                            width: 450,
                                            decoration: const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(8),
                                                    bottomRight:
                                                        Radius.circular(8))),
                                            child: const Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15),
                                                          child: Text(
                                                              "Cyber Chronicles",
                                                              style: HeaderTwoText
                                                                  .headerLight))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15),
                                                          child: Text(
                                                              "Interactive Design Project",
                                                              style: SubheadingText
                                                                  .subheader))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15),
                                                          child: Text(
                                                              "Jan 2024 - Feb 2024",
                                                              style: BasicText
                                                                  .basicDark))),
                                                ]))
                                      ]))))
                        ],
                      ),
                      const SizedBox(height: 50),

                      // Project 3
                      Column(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const DatalakePj()));
                              },
                              onHover: (value) {
                                setState(() {
                                  thirdIsHovering = value;
                                });
                              },
                              child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  transform: Matrix4.identity()
                                    ..scale(thirdIsHovering ? 1.1 : 1.0),
                                  transformAlignment: Alignment.center,
                                  child: Container(
                                      height: 250,
                                      width: 450,
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Colors.blue.withOpacity(0.2),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(3, 5),
                                        )
                                      ]),
                                      alignment: Alignment.center,
                                      child: Column(children: [
                                        ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft: Radius.circular(8),
                                                    topRight:
                                                        Radius.circular(8)),
                                            child: Image.asset(
                                                width: 450,
                                                height: 150,
                                                "../web/images/datalake.jpg",
                                                fit: BoxFit.fill)),
                                        Container(
                                            height: 100,
                                            width: 450,
                                            decoration: const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(8),
                                                    bottomRight:
                                                        Radius.circular(8))),
                                            child: const Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15),
                                                          child: Text(
                                                              "Datalake Event Schema",
                                                              style: HeaderTwoText
                                                                  .headerLight))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15),
                                                          child: Text(
                                                              "Snap One Internship Final Project",
                                                              style: SubheadingText
                                                                  .subheader))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15),
                                                          child: Text(
                                                              "Jul 2023",
                                                              style: BasicText
                                                                  .basicDark))),
                                                ]))
                                      ]))))
                        ],
                      ),
                      const SizedBox(height: 50),

                      // Project 4
                      Column(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MultusMediumPj()));
                              },
                              onHover: (value) {
                                setState(() {
                                  fourthIsHovering = value;
                                });
                              },
                              child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  transform: Matrix4.identity()
                                    ..scale(fourthIsHovering ? 1.1 : 1.0),
                                  transformAlignment: Alignment.center,
                                  child: Container(
                                      height: 250,
                                      width: 450,
                                      decoration: BoxDecoration(boxShadow: [
                                        BoxShadow(
                                          color: Colors.blue.withOpacity(0.2),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: const Offset(3, 5),
                                        )
                                      ]),
                                      alignment: Alignment.center,
                                      child: Column(children: [
                                        ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft: Radius.circular(8),
                                                    topRight:
                                                        Radius.circular(8)),
                                            child: Image.asset(
                                                width: 450,
                                                height: 150,
                                                "../web/images/multusmedium.jpg",
                                                fit: BoxFit.fill)),
                                        Container(
                                            height: 100,
                                            width: 450,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(8),
                                                  bottomRight:
                                                      Radius.circular(8)),
                                            ),
                                            child: const Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15),
                                                          child: Text(
                                                              "Multus Medium",
                                                              style: HeaderTwoText
                                                                  .headerLight))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15),
                                                          child: Text(
                                                              "AI@UCF Project",
                                                              style: SubheadingText
                                                                  .subheader))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15),
                                                          child: Text(
                                                              "Sep 2022 - Jan 2023",
                                                              style: BasicText
                                                                  .basicDark))),
                                                ]))
                                      ]))))
                        ],
                      ),
                    ])),
              ],
            ));
  }
}
