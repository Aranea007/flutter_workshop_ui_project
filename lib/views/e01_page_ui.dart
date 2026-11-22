import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e02_page_ui.dart';

class E01PageUi extends StatelessWidget {
  const E01PageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Image.asset('assets/images/img_orange1.png'),
            SizedBox(height: 30),
            Text(
              'Berrt JUICE',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto'),
            ),
            SizedBox(height: 30),
            Text(
              'A Moments of healthy sip',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'The best vitamin for your health',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(350, 60),
                  backgroundColor: Color.fromRGBO(246, 149, 21, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 25),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => E02PageUi()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Explore Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 22,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
