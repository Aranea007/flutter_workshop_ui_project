import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e03_page_ui.dart';
import 'package:flutter_workshop_ui_project/views/e04_page_ui.dart';

class E02PageUi extends StatefulWidget {
  const E02PageUi({super.key});

  @override
  State<E02PageUi> createState() => _E02PageUiState();
}

class _E02PageUiState extends State<E02PageUi> {
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
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Text(
                    'Welcome back',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Login to your account',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email or Phone',
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.all(25),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.all(25),
                      suffixIcon: Icon(Icons.visibility),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        //เปิดไปหน้า ForgotPassword
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => E04PageUi()),
                        );
                      },
                      child: Text('Forgot Password?',
                          style:
                              TextStyle(color: Color.fromRGBO(246, 149, 21, 1))),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.width, 60),
                      backgroundColor: Color.fromRGBO(246, 149, 21, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text('Log In',
                        style: TextStyle(color: Colors.white, fontSize: 20 , fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 20),
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
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => E03PageUi()),
                          );
                        },
                        child: Text('Create account',
                            style: TextStyle(
                                color: Color.fromRGBO(246, 149, 21, 1))),
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
