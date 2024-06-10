import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:portfolio_website/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class DatalakePj extends StatelessWidget {
  const DatalakePj({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse}),
      title: 'Datalake Event Schema',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue, primary: const Color(0xFF2A94D4)),
        fontFamily: 'Museo Sans',
        useMaterial3: true,
      ),
      home: const DatalakePage(),
    );
  }
}

Future<void> goToWebPage(String s) async {
  final Uri url = Uri.parse(s);
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

class DatalakePage extends StatefulWidget {
  const DatalakePage({super.key});

  @override
  State<DatalakePage> createState() => _DatalakePageState();
}

class _DatalakePageState extends State<DatalakePage> {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.sizeOf(context).width >= 1100;
    final PageController controller = PageController(viewportFraction: 0.8);
    List<Widget> children = [
      Card(
          color: Colors.black,
          elevation: 4,
          child: Image.asset("../web/images/datalakefull2.png",
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
                child:
                    Text("Datalake Event Schema", style: HeaderOneText.header)),
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
                                          'https://clarecontrolsdev.bitbucket.io/datalake-event-schema/schema-tree.html');
                                    },
                                    icon: const Iconify(MaterialSymbols.web)),
                              ]),
                              const SizedBox(height: 15),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      "Final Internship Project at Snap One's Clare Team",
                                      style: SubheadingText.subheader)),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Jul 2023",
                                      style: BasicText.basicDark)),
                              const SizedBox(height: 10),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Goal",
                                      style: HeaderTwoText.header)),
                              const SizedBox(height: 5),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      "To create a user-friendly and accessible resource for understanding the complex hierarchy of the Datalake backend events.",
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
                                      "\u2022 Front-End Development: Designed and built a website using HTML and CSS (2000 + lines) featuring a tree-like structure to visually represent event data.",
                                      style: BasicText.basicDark)),
                              const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      "\u2022 Collaboration: Assisted in the development of a Python script for accessing and processing JSON data used to populate the website.",
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
                                      "Developed a clear and informative website that simplifies the understanding of event structure for all Clare Team employees, regardless of technical background.",
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
