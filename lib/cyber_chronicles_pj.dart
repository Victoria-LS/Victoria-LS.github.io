import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:portfolio_website/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class CyberChroniclesPj extends StatelessWidget {
  const CyberChroniclesPj({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse}),
      title: 'Cyber Chronicles',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue, primary: const Color(0xFF2A94D4)),
        fontFamily: 'Museo Sans',
        useMaterial3: true,
      ),
      home: const CyberChroniclesPage(),
    );
  }
}

Future<void> goToWebPage(String s) async {
  final Uri url = Uri.parse(s);
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

class CyberChroniclesPage extends StatefulWidget {
  const CyberChroniclesPage({super.key});

  @override
  State<CyberChroniclesPage> createState() => _CyberChroniclesPageState();
}

class _CyberChroniclesPageState extends State<CyberChroniclesPage> {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.sizeOf(context).width >= 1100;
    final PageController controller = PageController(viewportFraction: 0.8);
    List<Widget> children = [
      Card(
          color: Colors.black,
          elevation: 4,
          child: Image.asset("../web/images/cyberchronicleslanding.png",
              fit: BoxFit.contain)),
      Card(
          color: Colors.black,
          elevation: 4,
          child: Image.asset("../web/images/cyberchroniclesauthor.png",
              fit: BoxFit.contain)),
      Card(
          color: Colors.black,
          elevation: 4,
          child: Image.asset("../web/images/cyberchroniclesaudience.png",
              fit: BoxFit.contain)),
      Card(
          color: Colors.black,
          elevation: 4,
          child: Image.asset("../web/images/cyberchroniclespage1.png",
              fit: BoxFit.contain)),
    ];

    return Scaffold(
        appBar: AppBar(
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            title: const Padding(
                padding: EdgeInsets.only(top: 25, left: 25),
                child: Text("Cyber Chronicles Project",
                    style: HeaderOneText.header)),
            actions: <Widget>[
              Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: IconButton(
                    icon: const Iconify(Ri.arrow_go_back_fill),
                    onPressed: () {
                      Navigator.of(
                        context,
                        rootNavigator: true,
                      ).pop(
                        context,
                      );
                    },
                  ))
            ]),
        body: SingleChildScrollView(
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                        width: isScreenWide
                            ? (MediaQuery.of(context).size.width / 2)
                            : (MediaQuery.of(context).size.width),
                        child: Padding(
                            padding: isScreenWide
                                ? const EdgeInsets.only(left: 50)
                                : const EdgeInsets.only(right: 25, left: 25),
                            child: Column(children: [
                              const SizedBox(height: 15),
                              Row(children: [
                                IconButton(
                                    onPressed: () async {
                                      await goToWebPage(
                                          'https://students.gaim.ucf.edu/~vi485495/DIG2500/IN/index.html');
                                    },
                                    icon: const Iconify(MaterialSymbols.web)),
                                const SizedBox(width: 15),
                                IconButton(
                                    onPressed: () async {
                                      await goToWebPage(
                                          "https://github.com/UCF-Victoria-Tran/cyber-chronicles");
                                    },
                                    icon: const Iconify(Mdi.github)),
                              ]),
                              const SizedBox(height: 15),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Jan 2024 - Feb 2024",
                                      style: BasicText.basicDark)),
                              const SizedBox(height: 10),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Course",
                                      style: HeaderTwoText.header)),
                              const SizedBox(height: 5),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      "Fundamentals of Interactive Design (DIG2500)",
                                      style: BasicText.basicDark)),
                              const SizedBox(height: 10),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Description",
                                      style: HeaderTwoText.header)),
                              const SizedBox(height: 5),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      "For this Fundamentals of Interactive Design (DIG2500) course project, I delved into the world of interactive storytelling by creating a choose-your-own-adventure (CYOA) game. This classic game style allows players to navigate the narrative by making choices that influence the story's direction.",
                                      style: BasicText.basicDark)),
                              const SizedBox(height: 10),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Experience",
                                      style: HeaderTwoText.header)),
                              const SizedBox(height: 5),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      "\u2022 Brainstormed multiple CYOA ideas with a central theme, selecting the one most engaging for the target audience.",
                                      style: BasicText.basicDark)),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      "\u2022 Integrated classmate feedback to refine the story and user experience.",
                                      style: BasicText.basicDark)),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      "\u2022 Explored emerging technologies by incorporating music generated by Meta's MusicGen and images from Google's Gemini AI.",
                                      style: BasicText.basicDark)),
                              const SizedBox(height: 10),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Outcome",
                                      style: HeaderTwoText.header)),
                              const SizedBox(height: 5),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      "Developed a CYOA game with approximately 960 lines of HTML.\nImplemented CSS animations for an enhanced user experience on the landing page.",
                                      style: BasicText.basicDark))
                            ]))),
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                      height: 500,
                      width: double.infinity,
                      child: PageView.builder(
                          itemCount: children.length,
                          controller: controller,
                          itemBuilder: (context, index) {
                            return ListenableBuilder(
                                listenable: controller,
                                builder: (context, child) {
                                  return children[index];
                                });
                          })),
                  const SizedBox(height: 50),
                ]))));
  }
}
