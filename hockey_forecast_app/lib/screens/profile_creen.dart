import 'package:flutter/material.dart';
import 'package:hockey_forecast_app/screens/news_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE8E8E8),
        appBar: AppBar(
          backgroundColor: Color(0xFFE8E8E8),
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: [
            Image.asset(
              'assets/edit.png', // Provide the path to your PNG image
              width: 24.0,
              height: 24.0,
              color: Color(
                  0xFF004AC7), // Optionally, you can apply color to the icon
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: 144,
                height: 144,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/profilepicture.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: OvalBorder(),
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                'John Doe',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0.05,
                  letterSpacing: -0.24,
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Opacity(
                opacity: 0.50,
                child: Text(
                  'John.Doe@example.com',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.07,
                    letterSpacing: -0.16,
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: MyBottomNavigationBar());
  }
}
