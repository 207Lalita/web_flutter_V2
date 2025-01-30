import 'package:flutter/material.dart'; //import widget android
import 'login.dart';

class search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => searchstate();
}

class searchstate extends State<search> {
  final _textsearch = TextEditingController();
  //var _texts = TextEditingController();
  String _a = '';
  //String _b = '';

  bool mounted = true;

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
        child: Column(
          children: [
            SizedBox(height: 30),
            searchbar(context),
            SizedBox(height: 40),
            locatebar(context),
            Text(_a)
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 217, 217, 217));

  //Tab
  Widget tabbar(BuildContext context) => Container(
      height: 80,
      width: 1900,
      color: const Color.fromARGB(221, 255, 255, 255),
      child: Row(children: [
        b_logo(),
        //Container(
        //    height: 80, width: 1000, color: Color.fromARGB(221, 255, 255, 255)),
        Spacer(),
        Spacer(),
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

  Widget field_search(BuildContext context) => TextField(
        controller: _textsearch,
        decoration: InputDecoration(filled: true, fillColor: Colors.white),
        keyboardType: TextInputType.text,
        //onSubmitted: (text) {String input = text;print(text);}
        //onChanged: (text) => updateText(),
      );

  void updateText() => setState(() {
        _a = '${_textsearch.text}';
        //_texts.text = _a;
        //_b = '${_texts.text}';
        //_textsearch.clear();
      });

  Widget text_f(BuildContext context) =>
      SizedBox(width: 450, child: field_search(context));

  Widget icon_search() => IconButton.filled(
      onPressed: () {
        updateText();
      },
      icon: Icon(Icons.search),
      style: IconButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 58, 109, 140)));

  Widget searchbar(BuildContext context) => Container(
        height: 48,
        width: 500,
        color: Color.fromARGB(255, 58, 109, 140),
        child: Row(
          children: [
            text_f(context),
            SizedBox(width: 5),
            icon_search(),
            SizedBox(width: 5)
          ],
        ),
      );

  Widget locate_text(BuildContext context) =>
      SizedBox(width: 650, child: field_search(context));

  Widget icon_locate() => IconButton.filled(
      onPressed: () {},
      icon: Icon(Icons.location_on, color: Color.fromARGB(255, 255, 255, 255)),
      style: IconButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 58, 109, 140)));

  Widget locatebar(BuildContext context) => Container(
        height: 48,
        width: 700, //Icon บวกเพิ่ม 40 แล้วก็บวก sizebox อีก 5+5
        color: Color.fromARGB(255, 58, 109, 140),
        child: Row(
          children: [
            SizedBox(width: 5),
            icon_locate(),
            SizedBox(width: 5),
            locate_text(context)
          ],
        ),
      );
}
