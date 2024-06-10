import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/akar_icons.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:url_launcher/url_launcher.dart';
import 'styles.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.sizeOf(context).width >= 1100;

    return isScreenWide
        ? const Row(children: [
            Spacer(flex: 1),
            TitleWidget(),
            Spacer(flex: 1),
            AboutWidget(),
            Spacer(flex: 3)
          ])
        // when in mobile
        : const Column(children: [
            SizedBox(height: 200),
            TitleWidget(),
            SizedBox(height: 15),
            Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: AboutWidget()),
            SizedBox(height: 50),
          ]);
  }
}

Future<void> goToWebPage(String s) async {
  final Uri _url = Uri.parse(s);
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

// Card element on the about page -- left on web
class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
          height: 450,
          width: 370,
          decoration: const BoxDecoration(
              //border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.transparent),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
                height: 200,
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20), // Image border
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(48), // Image radius
                    child: Image.asset("../web/images/headshot.jpg",
                        fit: BoxFit.cover),
                  ),
                )),
            const Padding(
                padding: EdgeInsets.only(top: 25),
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Victoria Tran",
                      style: HeaderOneText.header,
                    ))),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.center,
              child: Text("UCF '26 | CS & Digital Media",
                  style: SubheadingText.subheader),
            ),
            const SizedBox(height: 15),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              IconButton(
                  onPressed: () async {
                    await goToWebPage(
                        "https://www.linkedin.com/in/victoria-tran-258142250/");
                  },
                  icon: const Iconify(AkarIcons.linkedin_v1_fill, size: 22)),
              const SizedBox(width: 15),
              IconButton(
                  onPressed: () async {
                    await goToWebPage("https://github.com/UCF-Victoria-Tran");
                  },
                  icon: const Iconify(Mdi.github)),
              const SizedBox(width: 15),
              IconButton(
                  onPressed: () async {
                    // fix
                    await goToWebPage('mailto:victoriaungtran@gmail.com');
                  },
                  icon: const Iconify(Mdi.email)),
            ]),
            const Spacer(flex: 4)
          ]))
    ]);
  }
}

// About paragraph -- right on web
class AboutWidget extends StatefulWidget {
  const AboutWidget({super.key});

  @override
  State<AboutWidget> createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  TextStyle style = LinkText.link;
  bool firstIsHovering = false;
  bool secondIsHovering = false;
  bool thirdIsHovering = false;

  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.sizeOf(context).width >= 1100;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
                // change the dimensions in phone version
                width: 700,
                child: RichText(
                    text: TextSpan(children: <TextSpan>[
                  const TextSpan(text: "About\n", style: HeaderOneText.header),
                  TextSpan(
                      text:
                          "\nVictoria Tran is a talented innovator seamlessly combining computer science and digital media expertise to fuel her passion for technology and creativity. As a ",
                      style: isScreenWide
                          ? BasicText.basicLight
                          : BasicText.basicDark),
                  TextSpan(
                    text: "Burnett Honors Scholar",
                    style: firstIsHovering ? HoverLinkText.link : style,
                    onEnter: (details) =>
                        setState(() => firstIsHovering = true),
                    onExit: (details) => setState(() {
                      firstIsHovering = false;
                    }),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        setState(() {
                          style = ClickedLinkText.link;
                        });
                        goToWebPage("https://honors.ucf.edu/");
                      },
                  ),
                  TextSpan(
                      text:
                          " currently pursuing a Computer Science major and a Digital Media minor, Victoria has impeccably blended her love for coding and design. Her expertise spans across various domains, including full-stack programming, digital art, and graphic design. \n\nVictoria's journey into the tech world accelerated during her internship as a Software Engineering intern at ",
                      style: isScreenWide
                          ? BasicText.basicLight
                          : BasicText.basicDark),
                  TextSpan(
                      text: "Snap One",
                      style: secondIsHovering ? HoverLinkText.link : style,
                      onEnter: (details) =>
                          setState(() => secondIsHovering = true),
                      onExit: (details) => setState(() {
                            secondIsHovering = false;
                          }),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          setState(() {
                            style = ClickedLinkText.link;
                          });
                          goToWebPage("https://www.snapone.com/");
                        }),
                  TextSpan(
                      text:
                          " where she gained practial insights and honed her programming skills. An ",
                      style: isScreenWide
                          ? BasicText.basicLight
                          : BasicText.basicDark),
                  TextSpan(
                      text: "Adobe Certified Professional",
                      style: thirdIsHovering ? HoverLinkText.link : style,
                      onEnter: (details) =>
                          setState(() => thirdIsHovering = true),
                      onExit: (details) => setState(() {
                            thirdIsHovering = false;
                          }),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          setState(() {
                            style = ClickedLinkText.link;
                          });
                          goToWebPage(
                              "https://certifiedprofessional.adobe.com/en/home");
                        }),
                  TextSpan(
                      text:
                          ", Victoria's commitment to excellence is evident in her mastery of graphic design and digital art. \n\nVictoria's multifaceted skill set and leadership in innovative projects underscore her potential as a rising star in the world of technology and digital media.",
                      style: isScreenWide
                          ? BasicText.basicLight
                          : BasicText.basicDark)
                ]))))
      ],
    );
  }
}
