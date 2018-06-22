# contact_sider_list

仿微信联系人列表组件
[github项目地址](https://github.com/weihb/flutter-demo)   

![loading](https://github.com/weihb/contact_sider_list/raw/master/461529648698.jpg)
![loading](https://github.com/weihb/contact_sider_list/raw/master/ezgif.com-video-to-gif)    

---
# Install 
````
    dependencies:
        side_header_list_view: "^0.0.1"
````
# Usage
````

    import 'package:contact_sider_list/contact_sider_list.dart';

    ContactSiderList(
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
        )
````

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
