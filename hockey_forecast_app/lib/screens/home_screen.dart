import 'package:flutter/material.dart';
import 'package:hockey_forecast_app/screens/news_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE8E8E8),
        body: SafeArea(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 32,
            ),
            Name(),
            Name2(),
            Buttons(),
          ],
        )),
        bottomNavigationBar: MyBottomNavigationBar());
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Container(
            width: 288,
            height: 40,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: Colors.black.withOpacity(0.10000000149011612),
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Container(
              width: 248,
              height: 24,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    child: Stack(children: [Icon(Icons.arrow_back_ios)]),
                  ),
                  const SizedBox(width: 70),
                  Text(
                    'Dec 6-12',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0.07,
                      letterSpacing: -0.16,
                    ),
                  ),
                  const SizedBox(width: 70),
                  Container(
                    width: 24,
                    height: 24,
                    child: Stack(children: [Icon(Icons.arrow_forward_ios)]),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            width: 48,
            height: 40,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 48,
                    height: 40,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0x26004AC7)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 12,
                  top: 8,
                  child: Container(
                    width: 24,
                    height: 24,
                    child: Stack(children: [Icon(Icons.settings)]),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Name2 extends StatelessWidget {
  const Name2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
      child: Text(
        'Schedule',
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          height: 0.05,
          letterSpacing: -0.24,
        ),
      ),
    );
  }
}

class Name extends StatelessWidget {
  const Name({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
      child: SizedBox(
        width: 343,
        child: Text(
          'HOCKEY MATCHES',
          style: TextStyle(
            color: Color(0xFF0B0B0B),
            fontSize: 32,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            height: 0.03,
            letterSpacing: -0.32,
          ),
        ),
      ),
    );
  }
}
