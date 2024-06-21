import 'package:flutter/material.dart';
import 'past_session.dart';
import 'upcoming_session.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  late PageController _pageController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentPageIndex = 0;
                      _pageController.animateToPage(_currentPageIndex,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut);
                    });
                  },
                  child: Text(
                    "Upcoming",
                    style: TextStyle(
                      fontSize: screenWidth * 0.05,
                      color: _currentPageIndex == 0 ? Colors.blue : Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentPageIndex = 1;
                      _pageController.animateToPage(_currentPageIndex,
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut);
                    });
                  },
                  child: Text(
                    "Past",
                    style: TextStyle(
                      fontSize: screenWidth * 0.05,
                      color: _currentPageIndex == 1 ? Colors.blue : Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              children: const [
                UpcomingSession(),
                PastSession(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}