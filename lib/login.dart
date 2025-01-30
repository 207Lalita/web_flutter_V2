import 'package:flutter/material.dart'; //import widget android

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        titleSpacing: 0, //ชิดขอบซ้าย
        backgroundColor: Color.fromARGB(221, 217, 217, 217),
        title: Column(
          children: [
            tabbar(context),
          ],
        ),
      ),
      body: Center(
          child: SizedBox(
              width: 450,
              child: Column(
                children: [
                  SizedBox(width: 200, height: 70),
                  Text('กรอกข้อมูลเข้าสู่ระบบ'),
                  SizedBox(width: 200, height: 70),
                  username(context),
                  SizedBox(width: 300, height: 50),
                  password(context),
                  SizedBox(width: 300, height: 50),
                  button_login()
                ],
              ))),
      backgroundColor: Color.fromARGB(255, 217, 217, 217));

  //Tab
  Widget tabbar(BuildContext context) => Container(
      height: 80,
      width: 1900,
      color: const Color.fromARGB(221, 255, 255, 255),
      child: Row(children: [
        b_logo(),
        Container(
            height: 80, width: 1000, color: Color.fromARGB(221, 255, 255, 255)),
        Expanded(
            child: Row(
          children: [
            b_tip(),
            SizedBox(width: 10),
            b_profile(),
            SizedBox(width: 10),
            b_notify(),
            Spacer(),
            b_login(context),
            Spacer()
          ],
        ))
      ]));

  //Logo Button
  Widget textlogo() =>
      Text('สูงวัยใจเก๋า', style: TextStyle(color: Colors.deepOrange));
  Widget b_logo() => TextButton(onPressed: () {}, child: textlogo());

  //job Button
  Widget text_tip() => Text('ค้นหางาน',
      style: TextStyle(color: const Color.fromARGB(255, 2, 0, 0)));
  Widget b_tip() => TextButton(onPressed: () {}, child: text_tip());

  //Profile Button
  Widget text_profile() => Text('ข้อมูลส่วนตัว',
      style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)));
  Widget b_profile() => TextButton(onPressed: () {}, child: text_profile());

  //Notify Button
  Widget text_notify() => Text('แจ้งเตือน',
      style: TextStyle(color: const Color.fromARGB(255, 10, 0, 0)));
  Widget b_notify() => TextButton(onPressed: () {}, child: text_notify());

  //Login Button
  Widget text_login() => Text('เข้าสู่ระบบ',
      style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)));
  Widget b_login(BuildContext context) => ElevatedButton(
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => login())),
      child: text_login(),
      style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 58, 109, 140)));

  Widget username(BuildContext context) => TextField(
      decoration: InputDecoration(filled: true, fillColor: Colors.white),
      keyboardType: TextInputType.text,
      onSubmitted: (text) {
        String input = text;
        print(text);
      });

  Widget password(BuildContext context) => TextField(
      decoration: InputDecoration(filled: true, fillColor: Colors.white),
      keyboardType: TextInputType.text,
      onSubmitted: (text) {
        String input = text;
        print(text);
      });

  Widget button_login() => ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 58, 109, 140)),
      child: Text('เข้าสู่ระบบ',
          style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255))));
}
