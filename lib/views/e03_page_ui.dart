import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e02_page_ui.dart';

class E03PageUi extends StatefulWidget {
  const E03PageUi({super.key});

  @override
  State<E03PageUi> createState() => _E03PageUiState();
}

class _E03PageUiState extends State<E03PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // รูปด้านบน (เอาปุ่มย้อนกลับออกตามภาพต้นแบบ)
            Image.asset(
              'assets/images/img_orange2.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Text(
                    'Register', // แก้ตัวสะกด
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Create your new account',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  // ช่อง Name
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Name',
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                  SizedBox(height: 15),
                  // ช่อง E-mail
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'E-mail',
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                  SizedBox(height: 15),
                  // ช่อง Phone
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Phone',
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                  SizedBox(height: 15),
                  // ช่อง Password
                  TextField(
                    obscureText: true, // ซ่อนรหัสผ่าน
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Password',
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.all(20),
                    ),
                  ),
                  SizedBox(height: 15),
                  // ข้อความ Terms & Conditions สีส้มขีดเส้นใต้
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(fontSize: 12, color: Colors.black),
                      children: [
                        TextSpan(text: 'By signing up you agree to our '),
                        TextSpan(
                          text: 'Terms & Conditions',
                          style: TextStyle(
                            color: Color.fromRGBO(246, 149, 21, 1),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(text: '\nand '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            color: Color.fromRGBO(246, 149, 21, 1),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  // ปุ่ม Sign Up
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => E02PageUi()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width, 55),
                      backgroundColor: Color.fromRGBO(246, 149, 21, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // เส้นคั่นสีส้มกับคำว่า OR
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Color.fromRGBO(246, 149, 21, 1),
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'OR',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Color.fromRGBO(246, 149, 21, 1),
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  // ไอคอน Social Login
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/img_g.png', width: 35),
                      ),
                      SizedBox(width: 25),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/img_f.png', width: 35),
                      ),
                      SizedBox(width: 25),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/img_a.png', width: 35),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an Account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => E02PageUi()),
                          );
                        },
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            color: Color.fromRGBO(246, 149, 21, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}