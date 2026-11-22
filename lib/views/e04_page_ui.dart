import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e03_page_ui.dart';
import 'package:flutter_workshop_ui_project/views/e05_page_ui.dart';

class E04PageUi extends StatefulWidget {
  const E04PageUi({super.key});

  @override
  State<E04PageUi> createState() => _E04PageUiState();
}

class _E04PageUiState extends State<E04PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset( 
                    'assets/images/img_orange2.png',
                    width: double.infinity,
                    fit: BoxFit.cover),
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
                        backgroundColor: Colors
                            .white, // ปรับสีพื้นหลังถ้าต้องการ (เช่น สีขาวแบบในภาพ)
                        side: BorderSide
                            .none, // หากต้องการเอาเส้นขอบออกให้เป็นวงกลมมนทึบ
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Forgot your password?',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Enter email address',
                            style: TextStyle(fontSize: 20),
                          ),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding: EdgeInsets.all(25),
                            ),
                          ),
                        ]),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => E05PageUi()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(MediaQuery.of(context).size.width, 60),
                        backgroundColor: Color.fromRGBO(246, 149, 21, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text('Send Code',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                    SizedBox(height: 300),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Don\'t have an account?'),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => E03PageUi()),
                            );
                          },
                          child: Text('Create account',
                              style: TextStyle(
                                  color: Color.fromRGBO(246, 149, 21, 1))),
                        ),
                      ],
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
