import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:portfolio_website/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class CodeCruiserPJ extends StatelessWidget {
  const CodeCruiserPJ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse}),
      title: 'Code Cruiser',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue, primary: const Color(0xFF2A94D4)),
        fontFamily: 'Museo Sans',
        useMaterial3: true,
      ),
      home: const CodeCruiserPage(),
    );
  }
}

Future<void> goToWebPage(String s) async {
  final Uri url = Uri.parse(s);
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

class CodeCruiserPage extends StatefulWidget {
  const CodeCruiserPage({super.key});

  @override
  State<CodeCruiserPage> createState() => _CodeCruiserPageState();
}

class _CodeCruiserPageState extends State<CodeCruiserPage> {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.sizeOf(context).width >= 1100;
    final PageController controller = PageController(viewportFraction: 0.8);
    List<Widget> children = [
      Card(
          color: Colors.black,
          elevation: 4,
          child: Image.asset("../web/images/landing.png", fit: BoxFit.contain)),
      Card(
          color: Colors.black,
          elevation: 4,
          child: Image.asset("../web/images/profile.png", fit: BoxFit.contain)),
      Card(
          color: Colors.black,
          elevation: 4,
          child: Image.asset("../web/images/loading.png", fit: BoxFit.contain)),
      Card(
          color: Colors.black,
          elevation: 4,
          child: Image.asset("../web/images/game.png", fit: BoxFit.contain)),
    ];

    return Scaffold(
        appBar: AppBar(
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            title: const Padding(
                padding: EdgeInsets.only(top: 25, left: 20),
                child:
                    Text("Code Cruiser Project", style: HeaderOneText.header)),
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
                                          "https://github.com/TTrumpet/COP-4331C-Project");
                                    },
                                    icon: const Iconify(Mdi.github)),
                                const SizedBox(width: 15),
                                IconButton(
                                    onPressed: () async {
                                      await goToWebPage(
                                          'https://docs.google.com/document/d/1QAAQLF1Mzt_eYhRwboluxpG3d3VaVYG0mppbFYqM7Uo/edit#heading=h.t6fji7dxgmwp');
                                    },
                                    icon: const Iconify(MaterialSymbols.docs)),
                              ]),
                              const SizedBox(height: 15),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Jan 2024 - Apr 2024",
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
                                      "Processes of Object-Oriented Software (COP4331)",
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
                                      "Developed a game within a team of four to enhance coding skills through a typing race. Players compete by typing displayed code snippets accurately and quickly. The game offers single-player and multiplayer modes, with customizable profiles, cars, and a leaderboard to see your statistics.",
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
                                      "\u2022 Led the design phase, creating several prototypes and a low-fidelity mockip using Figma.",
                                      style: BasicText.basicDark)),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      "\u2022 Coded the front-end using Angular (pre-existing knowledge), while independently learning HTTP calls and APIs.",
                                      style: BasicText.basicDark)),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      "\u2022 Utilized Git for version control and mentored teammates on Git and GitHub usage.",
                                      style: BasicText.basicDark)),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      "\u2022 Collaborated using a hybrid V-Model development approach and weekly meetings to discuss progress.",
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
                                      "Developed the user interface for the landing, profile, and game pages (330 lines HTML, 800 lines CSS, 870 lines Typescript).",
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
