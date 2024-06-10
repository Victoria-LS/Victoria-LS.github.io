import 'package:flutter/material.dart';
import 'package:portfolio_website/styles.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.sizeOf(context).width >= 1100;

    return isScreenWide
        ? Align(
            alignment: Alignment.topLeft,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Education", style: HeaderOneText.header))),
              const SizedBox(height: 10),
              Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("College & High School",
                          style: isScreenWide
                              ? SubheadingText.subheaderLight
                              : SubheadingText.subheader))),
              const Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      width: 1200,
                      child: Padding(
                          padding: EdgeInsets.only(top: 25, bottom: 25),
                          child: EducationWidgetRow())))
            ]))
        : const Align(
            alignment: Alignment.topLeft,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Education", style: HeaderOneText.header))),
              SizedBox(height: 10),
              Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("College & High School",
                          style: SubheadingText.subheader))),
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      width: 1200,
                      child: Padding(
                          padding: EdgeInsets.only(top: 25, bottom: 25),
                          child: EducationWidgetColumn())))
            ]));
  }
}

class EducationWidgetRow extends StatelessWidget {
  const EducationWidgetRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          // Experience 1
          Column(children: [
            SizedBox(
                height: 150,
                width: 350,
                child: Column(children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        "../web/images/ucf.jpg",
                        fit: BoxFit.fill,
                      )),
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text("Flickr", style: CaptionText.caption))
                ])),
            const Column(children: [
              SizedBox(
                  height: 300,
                  width: 350,
                  child: Column(children: [
                    SizedBox(height: 10),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("University of Central Florida",
                            style: HeaderTwoText.header)),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                            "Bachelor of Science in Computer Science\nand Minor in Digital Media",
                            style: SubheadingText.subheader)),
                    SizedBox(height: 10),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("Aug 2022 - May 2026",
                            style: BasicText.basicLight)),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("GPA: 3.5", style: BasicText.basicLight)),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                            "\nClubs and Extracurriculars: Phi Eta Sigma Honors Society Member, National Society of Collegiate Scholars Member, National Society of Leadership and Success Member, Google Developer Student Club Member, Art Club Member, SASE@UCF Member, AI@UCF Member",
                            style: BasicText.basicLight)),
                  ]))
            ])
          ]),
          const SizedBox(width: 25),

          // Experience 2
          Column(children: [
            SizedBox(
                height: 150,
                width: 350,
                child: Column(children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                          "../web/images/UCF_Burnett_Honors_College.jpg",
                          fit: BoxFit.fill)),
                  const Align(
                      alignment: Alignment.topLeft,
                      child:
                          Text("Wikimedia Commons", style: CaptionText.caption))
                ])),
            const Column(children: [
              SizedBox(
                height: 300,
                width: 350,
                child: Column(children: [
                  SizedBox(height: 10),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("UCF Burnett Honors College",
                          style: HeaderTwoText.header)),
                  SizedBox(height: 10),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Aug 2022 - May 2026",
                          style: BasicText.basicLight)),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("GPA: 3.9", style: BasicText.basicLight)),
                ]),
              ),
            ])
          ]),
          const SizedBox(width: 25),

          // Experience 3
          Column(children: [
            SizedBox(
                height: 150,
                width: 350,
                child: Column(children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                          "../web/images/Pine_View_entrance_sign.jpg",
                          fit: BoxFit.fill)),
                  const Align(
                      alignment: Alignment.topLeft,
                      child: Text("Wikimedia Commons - Picasa 2.0",
                          style: CaptionText.caption))
                ])),
            const Column(children: [
              SizedBox(
                height: 300,
                width: 350,
                child: Column(children: [
                  SizedBox(height: 10),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Pine View School for the Gifted",
                          style: HeaderTwoText.header)),
                  SizedBox(height: 10),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Aug 2013 - May 2022",
                          style: BasicText.basicLight)),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("GPA: 4.79 / 4 Weighted",
                          style: BasicText.basicLight)),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                          "\nNo.2 Best Florida High School (U.S. News, 2023)\nNo.13 Best U.S. High School (U.S. News, 2023)",
                          style: BasicText.basicLight)),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                          "\nClubs and Extracurriculars: Historian of Artificial Intelligence and Machine Learning Club, Co-Captain of Animation of the FIRST Robotics Club, National Art Honor Society Member, National Honor Society Member, National Junior Honor Society Member",
                          style: BasicText.basicLight)),
                ]),
              ),
            ])
          ])
        ]));
  }
}

class EducationWidgetColumn extends StatelessWidget {
  const EducationWidgetColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Experience 1
        Column(children: [
          SizedBox(
              height: 150,
              width: 350,
              child: Column(children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      "../web/images/ucf.jpg",
                      fit: BoxFit.fill,
                    )),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Flickr", style: CaptionText.caption))
              ])),
          const Column(children: [
            SizedBox(
                width: 350,
                child: Column(children: [
                  SizedBox(height: 10),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("University of Central Florida",
                          style: HeaderTwoText.headerLight)),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                          "Bachelor of Science in Computer Science\nand Minor in Digital Media",
                          style: SubheadingText.subheader)),
                  SizedBox(height: 10),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("Aug 2022 - May 2026",
                          style: BasicText.basicDark)),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("GPA: 3.5", style: BasicText.basicDark)),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                          "\nClubs and Extracurriculars: Phi Eta Sigma Honors Society Member, National Society of Collegiate Scholars Member, National Society of Leadership and Success Member, Google Developer Student Club Member, Art Club Member, SASE@UCF Member, AI@UCF Member",
                          style: BasicText.basicDark)),
                ]))
          ])
        ]),
        const SizedBox(height: 50),

        // Experience 2
        Column(children: [
          SizedBox(
              height: 150,
              width: 350,
              child: Column(children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                        "../web/images/UCF_Burnett_Honors_College.jpg",
                        fit: BoxFit.fill)),
                const Align(
                    alignment: Alignment.topLeft,
                    child:
                        Text("Wikimedia Commons", style: CaptionText.caption))
              ])),
          const Column(children: [
            SizedBox(
              width: 350,
              child: Column(children: [
                SizedBox(height: 10),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("UCF Burnett Honors College",
                        style: HeaderTwoText.headerLight)),
                SizedBox(height: 10),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Aug 2022 - May 2026",
                        style: BasicText.basicDark)),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("GPA: 3.9", style: BasicText.basicDark)),
              ]),
            ),
          ])
        ]),
        const SizedBox(height: 50),

        // Experience 3
        Column(children: [
          SizedBox(
              height: 150,
              width: 350,
              child: Column(children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                        "../web/images/Pine_View_entrance_sign.jpg",
                        fit: BoxFit.fill)),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Wikimedia Commons - Picasa 2.0",
                        style: CaptionText.caption))
              ])),
          const Column(children: [
            SizedBox(
              width: 350,
              child: Column(children: [
                SizedBox(height: 10),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Pine View School for the Gifted",
                        style: HeaderTwoText.headerLight)),
                SizedBox(height: 10),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Aug 2013 - May 2022",
                        style: BasicText.basicDark)),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("GPA: 4.79 / 4 Weighted",
                        style: BasicText.basicDark)),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                        "\nNo.2 Best Florida High School (U.S. News, 2023)\nNo.13 Best U.S. High School (U.S. News, 2023)",
                        style: BasicText.basicDark)),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                        "\nClubs and Extracurriculars: Historian of Artificial Intelligence and Machine Learning Club, Co-Captain of Animation of the FIRST Robotics Club, National Art Honor Society Member, National Honor Society Member, National Junior Honor Society Member",
                        style: BasicText.basicDark)),
              ]),
            ),
          ]),
          const SizedBox(height: 50)
        ])
      ],
    );
  }
}
