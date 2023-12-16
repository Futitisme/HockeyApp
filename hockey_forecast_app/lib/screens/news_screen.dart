import 'package:flutter/material.dart';
import 'package:hockey_forecast_app/screens/home_screen.dart';
import 'package:hockey_forecast_app/screens/profile_creen.dart';
import 'package:hockey_forecast_app/screens/settings_screen.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NewsScreen extends StatefulWidget {
  NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final InAppReview _inAppReview = InAppReview.instance;

  @override
  void initState() {
    super.initState();
    _checkOpenCountAndShowReview();
  }

  Future<void> _checkOpenCountAndShowReview() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int openCount = prefs.getInt('openCount') ?? 0;

    // Increment the open count
    openCount++;
    prefs.setInt('openCount', openCount);

    // Show the review dialog on the second open
    if (openCount == 2) {
      await _requestReview();
    }
  }

  Future<void> _requestReview() async {
    if (await _inAppReview.isAvailable()) {
      await _inAppReview.requestReview();
    } else {
      // Handle the case where in-app reviews are not available
      // You may choose to redirect users to the app store.
      // For example: launch('https://play.google.com/store/apps/details?id=com.yourapp.package');
    }
  }

  final List<DataItem> data = [
    DataItem(
      date: 'Dec. 6',
      imageUrl: 'assets/im1.png',
      title:
          '"Washington" put Kuznetsov on injured reserve. He may be traded to the "Russian" Columbus..',
      description:
          '"Washington" put Kuznetsov on injured reserve. He may be traded to the "Russian" Columbus.."Washington" put Kuznetsov on injured reserve. He may be traded to the "Russian" Columbus.."Washington" put Kuznetsov on injured reserve. He may be traded to the "Russian" Columbus..',
    ),
    DataItem(
      date: 'Dec. 6',
      imageUrl: 'assets/im1.png',
      title:
          '"Washington" put Kuznetsov on injured reserve. He may be traded to the "Russian" Columbus..',
      description:
          '"Washington" put Kuznetsov on injured reserve. He may be traded to the "Russian" Columbus.."Washington" put Kuznetsov on injured reserve. He may be traded to the "Russian" Columbus.."Washington" put Kuznetsov on injured reserve. He may be traded to the "Russian" Columbus..',
    ),
  ];

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
            Scroll(),
            Name2(),
            News(data: data),
          ],
        )),
        bottomNavigationBar: MyBottomNavigationBar());
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        // Добавьте здесь вашу логику при переключении страниц
        _navigateToPage(index, context);
      },
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/home.png',
            width: 36.0,
            height: 36.0,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/news.png',
            width: 36.0,
            height: 36.0,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/profile.png',
            width: 36.0,
            height: 36.0,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/settings.png',
            width: 36.0,
            height: 36.0,
          ),
          label: '',
        ),
      ],
    );
  }

  void _navigateToPage(int index, BuildContext context) {
    // Добавьте здесь свою логику для перехода между страницами
    switch (index) {
      case 0:
        // Логика для перехода на Screen1
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
        break;
      case 1:
        // Логика для перехода на Screen2
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => NewsScreen(),
          ),
        );
        break;
      case 2:
        // Логика для перехода на Screen3
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileScreen(),
          ),
        );
        break;
      case 3:
        // Логика для перехода на Screen4
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => SettingsScreen(),
          ),
        );
        break;
    }
  }
}

class News extends StatelessWidget {
  const News({
    super.key,
    required this.data,
  });

  final List<DataItem> data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                // Navigate to the details screen with additional information
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(data[index]),
                  ),
                );
              },
              child: Container(
                width: 344,
                height: 203,
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 344,
                      child: Opacity(
                        opacity: 0.60,
                        child: Text(
                          data[index].date,
                          style: TextStyle(
                            color: Color(0xFF020202),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.09,
                            letterSpacing: -0.14,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 48.0),
                      height: 177,
                      child: Column(
                        children: [
                          Container(
                            width: 296,
                            height: 114,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage(data[index].imageUrl),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 296,
                            child: Text(
                              data[index].title,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ));
        },
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
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 48),
      child: Text(
        'Latest news',
        style: TextStyle(
          color: Color(0xFF0B0B0B),
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

class Scroll extends StatelessWidget {
  const Scroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 16,
          ),
          Container(
            width: 64,
            height: 64,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage("assets/el1.png"),
                fit: BoxFit.cover,
              ),
              shape: OvalBorder(side: BorderSide(width: 2)),
            ),
          ),
          const SizedBox(width: 16),
          Container(
            width: 64,
            height: 64,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage("assets/el2.png"),
                fit: BoxFit.fill,
              ),
              shape: OvalBorder(),
            ),
          ),
          const SizedBox(width: 16),
          Container(
            width: 64,
            height: 64,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage("assets/el3.png"),
                fit: BoxFit.cover,
              ),
              shape: OvalBorder(side: BorderSide(width: 2)),
            ),
          ),
          const SizedBox(width: 16),
          Container(
            width: 64,
            height: 64,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage("assets/el4.png"),
                fit: BoxFit.fill,
              ),
              shape: OvalBorder(),
            ),
          ),
          const SizedBox(width: 16),
          Container(
            width: 64,
            height: 64,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage("assets/el5.png"),
                fit: BoxFit.cover,
              ),
              shape: OvalBorder(side: BorderSide(width: 2)),
            ),
          ),
        ],
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
            'HOCKEY NEWS',
            style: TextStyle(
              color: Color(0xFF0B0B0B),
              fontSize: 32,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              height: 0.03,
              letterSpacing: -0.32,
            ),
          ),
        ));
  }
}

class DataItem {
  final String imageUrl;
  final String title;
  final String description;
  final String date;

  DataItem(
      {required this.imageUrl,
      required this.title,
      required this.description,
      required this.date});
}

class DetailsScreen extends StatelessWidget {
  final DataItem data;

  DetailsScreen(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8E8E8),
      appBar: AppBar(
        backgroundColor: Color(0xFFE8E8E8),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Color(0xFF004AC7),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Image.asset(
              data.imageUrl,
              width: double.infinity,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text(data.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
