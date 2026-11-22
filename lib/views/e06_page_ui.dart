import 'package:flutter/material.dart';
import 'package:flutter_workshop_ui_project/views/e02_page_ui.dart';

class E06PageUi extends StatefulWidget {
  const E06PageUi({super.key});

  @override
  State<E06PageUi> createState() => _E06PageUiState();
}

class _E06PageUiState extends State<E06PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/img_orange2.png',
                  width: double.infinity, fit: BoxFit.cover),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Create New Password',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Enter new password',
                  style: TextStyle(fontSize: 20),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter new password',
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
                    hintText: 'Confirm password',
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: EdgeInsets.all(25),
                    
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => E02PageUi()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 60),
                    backgroundColor: Color.fromRGBO(246, 149, 21, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
