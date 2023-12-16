import 'package:flutter/material.dart';
import 'package:hockey_forecast_app/screens/news_screen.dart';
import 'package:hockey_forecast_app/screens/onboarding2_screen.dart';

class Onboarding1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Color.fromRGBO(222, 223, 224, 100)],
              ),
            ),
            child: Center(
                child: Container(
              width: 328,
              height: 190,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 328,
                      height: 120,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              'EMBARK ON AN EXCITING  ',
                              style: TextStyle(
                                color: Color(0xFF004AC7),
                                fontSize: 24,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 80,
                            top: 26,
                            child: SizedBox(
                              width: 248,
                              child: Text(
                                'ICE ODYSSEY INTO THE EXCITING WORLD OF HOCKEY!',
                                style: TextStyle(
                                  color: Color(0xFF004AC7),
                                  fontSize: 24,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 80,
                    top: 114,
                    child: SizedBox(
                      width: 248,
                      child: Opacity(
                        opacity: 0.80,
                        child: Text(
                          'Experience game-changing hockey predictions with this app that combines accuracy with the excitement of the sport.',
                          style: TextStyle(
                            color: Color(0xFF004AC7),
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ),
        ),
        Expanded(
          child: Container(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      'assets/onboarding1.png',
                    ),
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  )),
                ),
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30, bottom: 35),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.transparent,
                      height: 140,
                      child: Center(
                          child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => NewsScreen(),
                                ),
                              );
                            },
                            child: Container(
                              width: 316,
                              height: 48,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 122,
                              ),
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: Color(0xFF004AC7),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Continue',
                                    style: TextStyle(
                                      color: Color(0xFFFDFDFD),
                                      fontSize: 17,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0.08,
                                      letterSpacing: -0.34,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            'Terms of use',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFF0F0F0),
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0.09,
                              letterSpacing: -0.45,
                            ),
                          ),
                          const SizedBox(
                            height: 36,
                          ),
                          Text(
                            'Privacy Policy',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFF0F0F0),
                              fontSize: 15,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0.09,
                              letterSpacing: -0.45,
                            ),
                          )
                        ],
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
