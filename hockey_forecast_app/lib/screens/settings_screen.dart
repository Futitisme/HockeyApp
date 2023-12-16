import 'package:flutter/material.dart';
import 'package:hockey_forecast_app/screens/news_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE8E8E8),
        body: SafeArea(
            child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
                child: SizedBox(
                  width: 343,
                  child: Text(
                    'SETTINGS',
                    style: TextStyle(
                      color: Color(0xFF0B0B0B),
                      fontSize: 32,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0.03,
                      letterSpacing: -0.32,
                    ),
                  ),
                )),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 46.0,
                margin: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Color(0xFFD6DCE3), // Замените на цвет по вашему выбору
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Privacy Policy',
                        style: TextStyle(
                          color: Color(0xFF004AC7),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF004AC7),
                      ),
                      onPressed: () {
                        // Добавьте вашу логику по нажатию
                        print('Arrow button pressed!');
                      },
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 46.0,
                margin: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Color(0xFFD6DCE3), // Замените на цвет по вашему выбору
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Terms of use',
                        style: TextStyle(
                          color: Color(0xFF004AC7),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF004AC7),
                      ),
                      onPressed: () {
                        // Добавьте вашу логику по нажатию
                        print('Arrow button pressed!');
                      },
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 46.0,
                margin: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Color(0xFFD6DCE3), // Замените на цвет по вашему выбору
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Subscription info',
                        style: TextStyle(
                          color: Color(0xFF004AC7),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF004AC7),
                      ),
                      onPressed: () {
                        // Добавьте вашу логику по нажатию
                        print('Arrow button pressed!');
                      },
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 46.0,
                margin: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Color(0xFFD6DCE3), // Замените на цвет по вашему выбору
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Rate app',
                        style: TextStyle(
                          color: Color(0xFF004AC7),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF004AC7),
                      ),
                      onPressed: () {
                        // Добавьте вашу логику по нажатию
                        print('Arrow button pressed!');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
        bottomNavigationBar: MyBottomNavigationBar());
  }
}
