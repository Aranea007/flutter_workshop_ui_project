import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e06_page_ui.dart';

class E05PageUi extends StatefulWidget {
  const E05PageUi({super.key});

  @override
  State<E05PageUi> createState() => _E05PageUiState();
}

class _E05PageUiState extends State<E05PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 100),
          Stack(
            children: [
              Center(
                  child: 
                  Text(
                'OTP Verification',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
               Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 30.0),
                  child: OutlinedButton(
                    onPressed: () {
                      //popคือย้อนกลับ
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_new, size: 20), //Icon
                    style: OutlinedButton.styleFrom(
                      fixedSize: const Size(40, 40),
                      shape: const CircleBorder(),
                      padding: EdgeInsets.zero, // เพื่อจัดให้อยู่ตรงกลางพอดี
                      backgroundColor: Color.fromRGBO(248, 238, 192, 1),
                      side: BorderSide
                          .none, // หากต้องการเอาเส้นขอบออกให้เป็นวงกลมมนทึบ
                    ),
                  ),
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/images/img_orange3.png',
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Enter OTP',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  'An 4 digit code has been sent to your',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'email',
                  style: TextStyle(fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 60,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          contentPadding: EdgeInsets.all(25),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          contentPadding: EdgeInsets.all(25),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          contentPadding: EdgeInsets.all(25),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          contentPadding: EdgeInsets.all(25),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('You should recieve the OTP in'),
                    Text(
                      ' 30 seconds',
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => E06PageUi()));
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 60),
                    backgroundColor: Color.fromRGBO(246, 149, 21, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Verify', style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
