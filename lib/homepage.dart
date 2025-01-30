import 'package:flutter/material.dart'; //import widget android
import 'login.dart' as login_page;
import 'search.dart';
import 'addjob_ent.dart';

void main() => runApp(MyApp());

//Main
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false, // ซ่อน Debug Banner
      home: Homepage());
}

//Homepage
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        titleSpacing: 0, //ชิดขอบซ้าย
        backgroundColor: Color.fromARGB(221, 255, 255, 255),
        title: Column(
          children: [
            tabbar(context),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [zone1(), zone2()],
      )));

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
            b_tip(context),
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

  /* //job Button
  Widget text_tip() => Text('ค้นหางาน',
      style: TextStyle(color: const Color.fromARGB(255, 2, 0, 0)));
  Widget b_tip(BuildContext context) => TextButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => search())),
        child: text_tip(),
      );
      */

  //test Addjob Button
  Widget text_tip() => Text('เพิ่มงาน',
      style: TextStyle(color: const Color.fromARGB(255, 2, 0, 0)));
  Widget b_tip(BuildContext context) => TextButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => addjob_ent())),
        child: text_tip(),
      );

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
          context, MaterialPageRoute(builder: (context) => login_page.login())),
      child: text_login(),
      style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 58, 109, 140)));

  //Container2 Zone1
  Widget zone1() => Container(
        height: 700,
        //width: 1000,
        color: const Color.fromARGB(221, 255, 255, 255),
        child: Row(
          children: [context_zone1(), photozone1()],
        ),
      );

  //textzone1
  Widget text_ads() => Text(
        'ยินดีต้อนรับสู่ \nเว็บไซต์หางานสำหรับผู้สูงอายุ \nสูงวัยใจเก๋า \nที่นี่เราเชื่อว่าคุณมีศักยภาพมากพอ!!!',
        style: TextStyle(color: const Color.fromARGB(255, 10, 0, 0)),
      );
  Widget context_zone1() =>
      Container(height: 600, width: 900, child: Center(child: text_ads()));

  //photozone1
  Widget photozone1() => Container(
      height: 500,
      width: 550,
      color: const Color.fromARGB(221, 31, 24, 24),
      child: Image.network(
          'https://images.unsplash.com/photo-1587040273238-9ba47c714796?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fGVsZGVybHl8ZW58MHx8MHx8fDA%3D'));
  //https://images.unsplash.com/photo-1526635090919-b5d79657c5a3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZWxkZXJseXxlbnwwfHwwfHx8MA%3D%3D

  //Zone2
  Widget zone2() => Container(
        height: 700,
        //width: 1000,
        color: const Color.fromARGB(221, 217, 217, 217),
        child: Row(
          children: [SizedBox(width: 50), photozone2(), context_zone2()],
        ),
      );

  //textzone2
  Widget text_ads2() => Text(
        'บริษัทต่าง ๆ ที่ร่วมงานกับเรา \nขอต้อนรับเข้าสู่การเป็นผู้มีอายุยังเก๋า',
        style: TextStyle(color: const Color.fromARGB(255, 10, 0, 0)),
      );
  Widget context_zone2() =>
      Container(height: 600, width: 900, child: Center(child: text_ads2()));

  //photozone2
  Widget photozone2() => Container(
      child: Center(),
      height: 500,
      width: 550,
      color: const Color.fromARGB(221, 31, 24, 24));
}
