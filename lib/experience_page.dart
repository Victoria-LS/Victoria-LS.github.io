import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_website/styles.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.sizeOf(context).width >= 1100;
    return isScreenWide
        ? const Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: EdgeInsets.only(left: 100),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child:
                              Text("Experience", style: HeaderOneText.header)),
                      SizedBox(height: 10),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Internship & Work Experience",
                              style: SubheadingText.subheaderLight)),
                      Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                              width: 900,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 25, bottom: 25),
                                  child: ExperienceWidget())))
                    ])))
        : const Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child:
                              Text("Experience", style: HeaderOneText.header)),
                      SizedBox(height: 10),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Internship & Work Experience",
                              style: SubheadingText.subheader)),
                      Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                              width: 900,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 25, bottom: 25),
                                  child: ExperienceWidget())))
                    ])));
  }
}

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.sizeOf(context).width >= 1100;

    return isScreenWide
        ? const Column(children: [
            // WEB VIEW ---------------------------
            // Experience 1
            Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Software Engineer Intern", style: HeaderTwoText.header),
                Text("May 2023 - Jul 2023 & May 2024 - Aug 2024",
                    style: BasicText.basicLight)
              ]),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Snap One Clare Team",
                      style: SubheadingText.subheader)),
              SizedBox(height: 10),
              ListBody(
                children: [
                  Text(
                      "\u2022 Handled Snap One's Clare Panel and learned how to connect home security and home automation devices to the panel.",
                      style: BasicText.basicLight),
                  Text(
                      "\u2022 Discovered and documented 10+ bugs on Jira. Demoed all bug fixes found during on-site stand-up meetings.",
                      style: BasicText.basicLight),
                  Text(
                      "\u2022 Committed 50+ lines of TypeScript and HTML for Clare's website, FusionPro. Learned how to test locally using Angular and practiced using Git to access the code on Bitbucket.",
                      style: BasicText.basicLight),
                  Text(
                      "\u2022 Collaborated with the UI team to create a UI Component Library for FusionPro.",
                      style: BasicText.basicLight),
                  Text(
                      "\u2022 Implemented Kanban, Agile, and Scrum methodologies to get bugs fixed and tasks completed.",
                      style: BasicText.basicLight)
                ],
              )
            ]),
            SizedBox(height: 25),

            // Experience 2
            Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          "Web Design and Development Assistant Scholar Intern",
                          style: HeaderTwoText.header),
                      Text("May 2024 - Aug 2024", style: BasicText.basicLight)
                    ]),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("Limbitless Solutions",
                        style: SubheadingText.subheader)),
                SizedBox(height: 10),
                ListBody(
                  children: [
                    Text(
                        "\u2022 Utilized Flutter to create a portfolio for web and mobile.",
                        style: BasicText.basicLight),
                  ],
                )
              ],
            ),
            SizedBox(height: 25),

            // Experience 3
            Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Restaurant Worker", style: HeaderTwoText.header),
                      Text("Dec 2019 - Jan 2020", style: BasicText.basicLight)
                    ]),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("Shangri-La Restaurant",
                        style: SubheadingText.subheader)),
                SizedBox(height: 10),
                ListBody(
                  children: [
                    Text(
                        "\u2022 Engaged with customers to serve dishes and refill drinks.",
                        style: BasicText.basicLight),
                    Text("\u2022 Monitored finished tables to clean.",
                        style: BasicText.basicLight),
                    Text("\u2022 Packaged takeout orders.",
                        style: BasicText.basicLight)
                  ],
                )
              ],
            ),
          ])
        : const Column(children: [
            // MOBILE VIEW ---------------------------
            // Experience 1
            Column(children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Software Engineer Intern",
                      style: HeaderTwoText.header)),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Snap One Clare Team",
                      style: SubheadingText.subheader)),
              SizedBox(height: 5),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("May 2023 - Jul 2023 & May 2024 - Aug 2024",
                      style: BasicText.basicDark)),
              SizedBox(height: 15),
              ListBody(
                children: [
                  Text(
                      "\u2022 Handled Snap One's Clare Panel and learned how to connect home security and home automation devices to the panel.",
                      style: BasicText.basicDark),
                  Text(
                      "\u2022 Discovered and documented 10+ bugs on Jira. Demoed all bug fixes found during on-site stand-up meetings.",
                      style: BasicText.basicDark),
                  Text(
                      "\u2022 Committed 50+ lines of TypeScript and HTML for Clare's website, FusionPro. Learned how to test locally using Angular and practiced using Git to access the code on Bitbucket.",
                      style: BasicText.basicDark),
                  Text(
                      "\u2022 Collaborated with the UI team to create a UI Component Library for FusionPro.",
                      style: BasicText.basicDark),
                  Text(
                      "\u2022 Implemented Kanban, Agile, and Scrum methodologies to get bugs fixed and tasks completed.",
                      style: BasicText.basicDark)
                ],
              )
            ]),
            SizedBox(height: 25),

            // Experience 2
            Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                        "Web Design and Development Assistant Scholar Intern",
                        style: HeaderTwoText.header)),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("Limbitless Solutions",
                        style: SubheadingText.subheader)),
                SizedBox(height: 5),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("May 2024 - Aug 2024",
                        style: BasicText.basicDark)),
                SizedBox(height: 15),
                ListBody(
                  children: [
                    Text(
                        "\u2022 Utilized Flutter to create a portfolio for web and mobile.",
                        style: BasicText.basicDark),
                  ],
                )
              ],
            ),
            SizedBox(height: 25),

            // Experience 3
            Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child:
                        Text("Restaurant Worker", style: HeaderTwoText.header)),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("Shangri-La Restaurant",
                        style: SubheadingText.subheader)),
                SizedBox(height: 5),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("Dec 2019 - Jan 2020",
                        style: BasicText.basicDark)),
                SizedBox(height: 15),
                ListBody(
                  children: [
                    Text(
                        "\u2022 Engaged with customers to serve dishes and refill drinks.",
                        style: BasicText.basicDark),
                    Text("\u2022 Monitored finished tables to clean.",
                        style: BasicText.basicDark),
                    Text("\u2022 Packaged takeout orders.",
                        style: BasicText.basicDark)
                  ],
                )
              ],
            ),
          ]);
  }
}
