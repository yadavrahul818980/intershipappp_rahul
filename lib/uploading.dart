import 'package:flutter/material.dart';
import 'package:workshala/loadingpage.dart';
import 'package:workshala/uploaded.dart';
import 'package:workshala/utilities.dart';
import 'package:workshala/jobdis.dart';
import 'package:workshala/loadingpage.dart';

class uploadingPage extends StatefulWidget {
  const uploadingPage({super.key});

  @override
  State<uploadingPage> createState() => _uploadingPageState();
}

class _uploadingPageState extends State<uploadingPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: uploadingScreen(),
    );
  }
}

class uploadingScreen extends StatelessWidget {
  const uploadingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      const SizedBox(
        height: 55,
      ),
      Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 16,
          ),
          returnButton(
              'assets/vectornormal.png',
              const Color.fromARGB(34, 104, 104, 104),
              28.0,
              28.0,
              context,
              const jobDisPage()),
          const SizedBox(
            width: 20,
          ),
          const Text(
            'Details',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),
          // const SizedBox(width: 150),
          // returnButton1(
          //     'assets/share.png',
          //     const Color.fromARGB(34, 104, 104, 104),
          //     28.0,
          //     28.0,
          //     context,
          //     const jobDisPage()),
        ],
      )),
      // Container(
      //     child: Padding(
      //         padding: const EdgeInsets.fromLTRB(0, 25, 15, 0),
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           children: [
      //             const SizedBox(
      //               width: 16,
      //             ),
      //             showBox('assets/details.png', 118.0, 134.0,
      //                 'Interaction Designer', 'Dribbble'),
      //             textBox(30.0, 350.0, 250.0, 'Salary', '-'),
      //             textBox(30.0, 350.0, 220.0, 'Type', 'Part-Time'),
      //             textBox(30.0, 350.0, 220.0, 'Location', 'WFH'),
      //             textBox(30.0, 350.0, 200.0, 'Duration', '3 Months'),
      //             Container(
      //                 decoration: BoxDecoration(
      //                     // borderRadius: BorderRadius.circular(20),
      //                     border: Border.all(
      //               color: const Color.fromARGB(151, 12, 12, 12),
      //               width: 1,
      //             ))),
      Container(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 14, 13, 0),
              child: Column(children: [
                jobDisBoxUi(
                    'assets/google1.png',
                    332.0,
                    320.0,
                    'UI/UX Designer',
                    'Google LLC',
                    'California, United States',
                    '\$10,000-\$25,000/month',
                    'Full Time',
                    'Onsite',
                    'Posted 10 Days ago, ends in 25 Dec.'),
              ]))),
      SizedBox(height: 33),
      Container(
          width: 324,
          height: 162,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              border: Border.all(
                color: const Color(0xFF0A66C2),
                width: 2,
              )),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Uploading...',
              style: TextStyle(
                color: Color(0xFF0093FF),
                fontSize: 21,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0.05,
              ),
            ),
          ])),
      SizedBox(height: 75),
      applyButtonBox('Cancel', 171.0, 50.0, uploadingScreen(), uploadedScreen()),
    ]));
  }
}
