import 'package:flutter/material.dart';
import 'package:hockey_forecast_app/screens/home_screen.dart';
import 'package:hockey_forecast_app/screens/news_screen.dart';
import 'package:hockey_forecast_app/screens/profile_creen.dart';
import 'package:hockey_forecast_app/screens/settings_screen.dart';

class Onboarding2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            child: Image.asset(
          'assets/imageback.png',
          fit: BoxFit.cover,
        )),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                color: Colors.transparent,
                child: Center(
                  child: Text(
                    'Onboarding 2',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Stack(
                  children: [
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
        )
      ],
    ));
  }
}
