import 'package:login/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<WelcomeScreen> {
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: PageView(
          controller: _pageController,
          children: [
            _buildPage(
                "NgopiSeru!          Bikin Harimu Bikin Seru dengan Seteguk Kopi",
                "assets/images/24.jpeg",
                1),
            _buildPage(
                "Mengawali Hari dengan Tawa dan Secangkir Kopi di NgopiSeru!",
                "assets/images/24.jpeg",
                2),
            _buildLastPage(),
          ],
        ),
      ),
    );
  }

  Widget _buildPage(String title, String image, int pageNumber) {
    return Container(
      padding: EdgeInsets.only(top: 100, bottom: 40),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.6),
            BlendMode.dstATop,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.pacifico(
              fontSize: 50.40,
              color: Colors.white,
            ),
          ),
          Column(
            children: [
              SizedBox(height: 80),
              Material(
                color: Color(0xFFFE57743),
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    if (pageNumber < 3) {
                      _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease);
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInScreen(),
                        ),
                      );
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                    decoration: BoxDecoration(),
                    child: Text(
                      pageNumber < 3 ? "Selanjutnya" : "Mulai",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLastPage() {
    return Container(
      padding: EdgeInsets.only(top: 100, bottom: 40),
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage("assets/images/24.jpeg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.6),
            BlendMode.dstATop,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Nikmati Setiap Seduhan, Temukan Keunikan di NgopiSeru! Terimakasih",
            style: GoogleFonts.pacifico(
              fontSize: 50,
              color: Colors.white,
            ),
          ),
          Column(
            children: [
              SizedBox(height: 80),
              Material(
                color: Color(0xFFFE57743),
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignInScreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                    decoration: BoxDecoration(),
                    child: Text(
                      "Mulai",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
