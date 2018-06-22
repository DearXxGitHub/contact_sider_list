import 'package:flutter/material.dart';
import 'ContactSiderList.dart';
import 'ContactObject.dart';
import 'ContactHeader.dart';
import 'ContactItem.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Contact_Sider_List'),
        ),
        body: ContactSiderList(
          items: contactData,
          headerBuilder: (BuildContext context, int index) {
            return Container(
              child: ContactHeader(),
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.white,
              alignment: Alignment.centerLeft,
              child: ContactItem(item: contactData[index]),
            );
          },
          sectionBuilder: (BuildContext context, int index) {
            return Container(
              height: 32.0,
              padding: const EdgeInsets.only(left: 14.0),
              color: Colors.grey[300],
              alignment: Alignment.centerLeft,
              child: Text(
                contactData[index].seationKey,
                style: TextStyle(fontSize: 14.0, color: Color(0xff909090)),
              ),
            );
          },
        ));
  }
}
