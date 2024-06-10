import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:iconify_flutter/icons/simple_icons.dart';
import 'package:portfolio_website/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class MultusMediumPj extends StatelessWidget {
  const MultusMediumPj({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse}),
      title: 'Multus Medium',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue, primary: const Color(0xFF2A94D4)),
        fontFamily: 'Museo Sans',
        useMaterial3: true,
      ),
      home: const MultusMediumPage(),
    );
  }
}

Future<void> goToWebPage(String s) async {
  final Uri _url = Uri.parse(s);
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

class MultusMediumPage extends StatefulWidget {
  const MultusMediumPage({super.key});

  @override
  State<MultusMediumPage> createState() => _MultusMediumPageState();
}

class _MultusMediumPageState extends State<MultusMediumPage> {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.sizeOf(context).width >= 1100;

    return Scaffold(
        appBar: AppBar(
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            title: const Padding(
                padding: EdgeInsets.only(top: 25, left: 25),
                child:
                    Text("Multus Medium Project", style: HeaderOneText.header)),
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
                        child: isScreenWide
                            ? Column(children: [
                                const SizedBox(height: 25),
                                const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("AI@UCF Club Project",
                                        style: SubheadingText.subheader)),
                                const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Sep 2022 - Jan 2023",
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
                                        "To develop an AI-powered recommender system capable of filtering multimedia data (input, for example, movies) and suggesting other media suited to a user's preferences (output other movies, art, games, and books).",
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
                                        "\u2022 Leadership: Managed the Art Recommender Team as their pioneer leader, strategixing the integration of existing art recommenders for multimedia data types.",
                                        style: BasicText.basicDark)),
                                const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                        "\u2022 Machine Learning Exploration: Coded 300+ lines of Python to create Convolutional Neural Networks (CNNs) and LeNet architectures, testing them with MNIST and FASHION MNIST datasets.",
                                        style: BasicText.basicDark)),
                                const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                        "\u2022 Teamwork & Mentorship: Organized study groups to teach Python coding and guide the implementation of simple AI projects.",
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
                                        "Established a strong foundation for the Multus Medium Art Recommender system with a functional image identification/prediction prototype. This paves the way for future development and integration of recommendation algorithms into a fully-fledged user experience.",
                                        style: BasicText.basicDark)),
                                const SizedBox(height: 50),
                                Row(children: [
                                  // First Icon
                                  InkWell(
                                      splashColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () {
                                        goToWebPage(
                                            'https://colab.research.google.com/drive/1aNpcrL5HGeNCaY-39yw8pn7N1TXTPtri#scrollTo=Wksz8W2b1orQ');
                                      },
                                      child: const Card(
                                          elevation: 4,
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 10),
                                                Iconify(
                                                    SimpleIcons.googlecolab),
                                                SizedBox(height: 10),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 25, right: 25),
                                                    child: Text(
                                                        "Art Recommenders Practice CNN Code")),
                                                SizedBox(height: 10),
                                              ]))),

                                  const SizedBox(width: 25),

                                  // Second Icon
                                  InkWell(
                                      splashColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () {
                                        goToWebPage(
                                            'https://colab.research.google.com/drive/14ZOo751kBq2K_VkvM77lbWVtZW2p_ckK#scrollTo=XWxHd_YSGIw7');
                                      },
                                      child: const Card(
                                          elevation: 4,
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 10),
                                                Iconify(
                                                    SimpleIcons.googlecolab),
                                                SizedBox(height: 10),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 25, right: 25),
                                                    child: Text(
                                                        "Art Recommenders Prototype")),
                                                SizedBox(height: 10)
                                              ]))),
                                ]),
                              ])

                            // MOBILE VIEW -------------------
                            : Column(
                                children: [
                                  const SizedBox(height: 50),
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
                                          style: BasicText.basicDark)),
                                  const SizedBox(height: 50),
                                  const SizedBox(height: 15),
                                  Column(children: [
                                    // First Icon
                                    InkWell(
                                        splashColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () {
                                          goToWebPage(
                                              'https://colab.research.google.com/drive/1aNpcrL5HGeNCaY-39yw8pn7N1TXTPtri#scrollTo=Wksz8W2b1orQ');
                                        },
                                        child: const Card(
                                            elevation: 4,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(height: 10),
                                                  Iconify(
                                                      SimpleIcons.googlecolab),
                                                  SizedBox(height: 10),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 25, right: 25),
                                                      child: Text(
                                                          "Art Recommenders Practice CNN Code")),
                                                  SizedBox(height: 10),
                                                ]))),

                                    const SizedBox(height: 25),

                                    // Second Icon
                                    InkWell(
                                        splashColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () {
                                          goToWebPage(
                                              'https://colab.research.google.com/drive/14ZOo751kBq2K_VkvM77lbWVtZW2p_ckK#scrollTo=XWxHd_YSGIw7');
                                        },
                                        child: const Card(
                                            elevation: 4,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(height: 10),
                                                  Iconify(
                                                      SimpleIcons.googlecolab),
                                                  SizedBox(height: 10),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 25, right: 25),
                                                      child: Text(
                                                          "Art Recommenders Prototype")),
                                                  SizedBox(height: 10),
                                                ]))),
                                  ]),
                                ],
                              )))),
          ]),
        )));
  }
}
