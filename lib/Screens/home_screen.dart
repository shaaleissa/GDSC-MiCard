import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flip_card/flip_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
        Card(
          elevation: 0,
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: FlipCard(
            fill: Fill.fillBack,
            direction: FlipDirection.HORIZONTAL,
            front: Stack(
              children: [
                Image.asset(
                  'assets/images/background.gif',
                  // width: width,
                  // height: height,
                ),
                Align(
                  alignment: Alignment.center,
                  heightFactor: 1.1,
                  child: Container(
                    width: width/1.3,
                    height: height/1.5,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children:  [
                            const CircleAvatar(
                                radius: 30,
                                foregroundImage:
                                    AssetImage('assets/images/s.jpeg')),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '_________Shahad Aleissa',
                              style: GoogleFonts.sacramento(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 120,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              Text('Flutter',
                                  style: GoogleFonts.lato(
                                    fontSize: 90,
                                    fontWeight: FontWeight.w300,
                                  ),),
                              Text(
                                '       Developer',
                                style: GoogleFonts.lato(
                                    fontSize: 45, fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 120,
                        ),
                        Text(
                          'Flip Me!',
                          style: GoogleFonts.sacramento(
                              fontSize: 40, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            back: Stack(
              children: [
                Image.asset(
                  'assets/images/background.gif',
                ),
                Align(
                  alignment: Alignment.center,
                  heightFactor: 1.2,
                  child: Container(
                    width: width/1.3,
                    height: height/1.5,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text('Find',
                                    style: GoogleFonts.lato(
                                      fontSize: 100,
                                      fontWeight: FontWeight.w300,)
                                    ),
                              ),
                              Text(
                                '       Me',
                                style: GoogleFonts.lato(
                                    fontSize: 50, fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 160,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('My Socials',
                              style: GoogleFonts.sacramento(
                                  fontSize: 30, fontWeight: FontWeight.w300)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                onTap: () async {
                                  final url = Uri.parse(
                                      'https://twitter.com/shaaleissa');
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: const FaIcon(
                                  FontAwesomeIcons.twitter,
                                  color: Colors.black,
                                  size: 40,
                                )),
                            const SizedBox(
                              width: 40,
                            ),
                            InkWell(
                                onTap: () async {
                                  final url = Uri.parse(
                                      'https://www.linkedin.com/in/shahad-aleissa33/');
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: const FaIcon(
                                  FontAwesomeIcons.linkedin,
                                  color: Colors.black,
                                  size: 40,
                                )),
                            const SizedBox(
                              width: 40,
                            ),
                            InkWell(
                                onTap: () async {
                                  final url = Uri.parse(
                                      'https://github.com/shaaleissa');
                                  if (await canLaunchUrl(url)) {
                                    await launchUrl(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                },
                                child: const FaIcon(
                                  FontAwesomeIcons.github,
                                  color: Colors.black,
                                  size: 40,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}
