import 'package:flutter/material.dart';
import 'package:portfolio_website/styles.dart';

class AwardsPage extends StatelessWidget {
  const AwardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.sizeOf(context).width >= 1100;

    return isScreenWide
        // WEB VIEW ---------------------------------------------------------------
        ? const Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: EdgeInsets.only(left: 100),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Awards", style: HeaderOneText.header)),
                      SizedBox(height: 10),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                              "Awards, Scholarships, and Certifications",
                              style: SubheadingText.subheader)),
                      SizedBox(height: 25),
                      Align(
                        alignment: Alignment.topLeft,
                        child: ListBody(children: [
                          Text(
                              "\u2022 Build Your Generative AI Productivity Skills with Microsoft and LinkedIn",
                              style: BasicText.basicLight),
                          Text("\u2022 Figma Essential Training: The Basics",
                              style: BasicText.basicLight),
                          Text("\u2022 UX Foundations: Research",
                              style: BasicText.basicLight),
                          Text(
                              "\u2022 University of Central Florida - Dean's List Honors",
                              style: BasicText.basicLight),
                          Text(
                              "\u2022 Martin Plaehn Scholoarship Program Recipient",
                              style: BasicText.basicLight),
                          Text(
                              "\u2022 University of Central Florida - Freshman Provost Award",
                              style: BasicText.basicLight),
                          Text(
                              "\u2022 Adobe Certified Professional in Video Design",
                              style: BasicText.basicLight),
                          Text(
                              "\u2022 Adobe Certified Professional in Visual Design Using Adobe Photoshop",
                              style: BasicText.basicLight),
                          Text(
                              "\u2022 Adobe Certified Professional in Digital Video Using Adobe Premiere Pro",
                              style: BasicText.basicLight),
                          Text("\u2022 Rotary Art Contest Runner Up",
                              style: BasicText.basicLight),
                          Text(
                              "\u2022 2021 STEM Fair - Mu Alpha Theta Award Recipient",
                              style: BasicText.basicLight),
                          Text("\u2022 2021 STEM Fair - 1st Place",
                              style: BasicText.basicLight)
                        ]),
                      )
                    ])))
        :
        // MOBILE VIEW ---------------------------------------------------------------
        const Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: EdgeInsets.only(left: 25, right: 25),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("Awards", style: HeaderOneText.header)),
                      SizedBox(height: 10),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                              "Awards, Scholarships, and Certifications",
                              style: SubheadingText.subheader)),
                      SizedBox(height: 25),
                      Align(
                        alignment: Alignment.topLeft,
                        child: ListBody(children: [
                          Text(
                              "\u2022 Build Your Generative AI Productivity Skills with Microsoft and LinkedIn",
                              style: BasicText.basicDark),
                          Text("\u2022 Figma Essential Training: The Basics",
                              style: BasicText.basicDark),
                          Text("\u2022 UX Foundations: Research",
                              style: BasicText.basicDark),
                          Text(
                              "\u2022 University of Central Florida - Dean's List Honors",
                              style: BasicText.basicDark),
                          Text(
                              "\u2022 Martin Plaehn Scholoarship Program Recipient",
                              style: BasicText.basicDark),
                          Text(
                              "\u2022 University of Central Florida - Freshman Provost Award",
                              style: BasicText.basicDark),
                          Text(
                              "\u2022 Adobe Certified Professional in Video Design",
                              style: BasicText.basicDark),
                          Text(
                              "\u2022 Adobe Certified Professional in Visual Design Using Adobe Photoshop",
                              style: BasicText.basicDark),
                          Text(
                              "\u2022 Adobe Certified Professional in Digital Video Using Adobe Premiere Pro",
                              style: BasicText.basicDark),
                          Text("\u2022 Rotary Art Contest Runner Up",
                              style: BasicText.basicDark),
                          Text(
                              "\u2022 2021 STEM Fair - Mu Alpha Theta Award Recipient",
                              style: BasicText.basicDark),
                          Text("\u2022 2021 STEM Fair - 1st Place",
                              style: BasicText.basicDark)
                        ]),
                      ),
                      SizedBox(height: 100)
                    ])));
  }
}
