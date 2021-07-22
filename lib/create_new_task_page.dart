import 'dart:typed_data';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:start_flutter/widgets/dates_list.dart';


void main() {
  runApp(MaterialApp(
    localizationsDelegates: [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [
      const Locale('en', ''), // English, no country code
      const Locale('fa', ''), // farsi, no country code
    ],
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    home: CreateNewTaskPage(),
  ));
}


class CreateNewTaskPage extends StatefulWidget {
  @override
  _CreateNewTaskPageState createState() => _CreateNewTaskPageState();
}

String __dropDownValue;
String _dropDownValue;
String _dropDownValue1;
class _CreateNewTaskPageState extends State<CreateNewTaskPage> {
  @override
  Widget build(BuildContext context) {
    void click() {}
    var width = MediaQuery.of(context).size.width;

    item() {
      return Container(
          padding: EdgeInsets.all(15.0),
          width: width * 2 / 3,
          child: DropdownButton(
            hint: __dropDownValue == null
                ? Text('Date')
                : Text(
              __dropDownValue,
              style: TextStyle(color: Colors.blueGrey),
            ),
            isExpanded: true,
            iconSize: 30.0,
            style: TextStyle(color: Colors.blueGrey),
            items: ['One', 'Two', 'Three'].map(
                  (val) {
                return DropdownMenuItem<String>(
                  value: val,
                  child: Text(val),
                );
              },
            ).toList(),
            onChanged: (val) {
              setState(
                    () {
                  __dropDownValue = val;
                },
              );
            },
          ));
    }

    item1() {
      return Container(
        padding: EdgeInsets.all(12.0),
        child: RawMaterialButton(
          onPressed: () {},
          elevation: 2.0,
          fillColor: Color(0x309397).withOpacity(1.0),
          child: Icon(
            Icons.calendar_today,
            size: 30.0,
          ),
          padding: EdgeInsets.all(12.0),
          shape: CircleBorder(),
        ),
      );
    }

    item2() {
      return Container(
          padding: EdgeInsets.all(15.0),
          width: width * 1 / 2,
          child: DropdownButton(
            hint: _dropDownValue == null
                ? Text('Start time')
                : Text(
              _dropDownValue,
              style: TextStyle(color: Colors.blueGrey),
            ),
            isExpanded: true,
            iconSize: 30.0,
            style: TextStyle(color: Colors.blueGrey),
            items: [
              '1:00   AM',
              '2:00   AM',
              '3:00   AM',
              '4:00   AM',
              '5:00   AM',
              '6:00   AM',
              '7:00   AM',
              '8:00   AM',
              '9:00   AM',
              '10:00   AM',
              '11:00   AM',
              '12:00   AM',
              '1:00   PM',
              '2:00   PM',
              '3:00   PM',
              '4:00   PM',
              '5:00   PM',
              '6:00   PM',
              '7:00   PM',
              '8:00   PM',
              '9:00   PM',
              '10:00   PM',
              '11:00   PM',
              '12:00   PM'
            ].map(
                  (val) {
                return DropdownMenuItem<String>(
                  value: val,
                  child: Text(val),
                );
              },
            ).toList(),
            onChanged: (val) {
              setState(
                    () {
                  _dropDownValue = val;
                },
              );
            },
          ));
    }

    item3() {
      return Container(
          padding: EdgeInsets.all(15.0),
          width: width * 1 / 2,
          child: DropdownButton(
            hint: _dropDownValue1 == null
                ? Text('End time')
                : Text(
              _dropDownValue1,
              style: TextStyle(color: Colors.blueGrey),
            ),
            isExpanded: true,
            iconSize: 30.0,
            style: TextStyle(color: Colors.blueGrey),
            items: [
              '1:00   AM',
              '2:00   AM',
              '3:00   AM',
              '4:00   AM',
              '5:00   AM',
              '6:00   AM',
              '7:00   AM',
              '8:00   AM',
              '9:00   AM',
              '10:00   AM',
              '11:00   AM',
              '12:00   AM',
              '1:00   PM',
              '2:00   PM',
              '3:00   PM',
              '4:00   PM',
              '5:00   PM',
              '6:00   PM',
              '7:00   PM',
              '8:00   PM',
              '9:00   PM',
              '10:00   PM',
              '11:00   PM',
              '12:00   PM'
            ].map(
                  (val) {
                return DropdownMenuItem<String>(
                  value: val,
                  child: Text(val),
                );
              },
            ).toList(),
            onChanged: (val) {
              setState(
                    () {
                  _dropDownValue1 = val;
                },
              );
            },
          ));
    }

    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          leading: Navigator.canPop(context)
              ? IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 27,
            ),
            onPressed: () => Navigator.of(context).pop(),
          )
              : null,
          title: Text('Create new task', style: TextStyle(color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: (38.0),)),
          backgroundColor:  Color(0xf9be7c).withOpacity(1.0),
          shape:  RoundedRectangleBorder(  borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          )),
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            titlePadding:  EdgeInsets.all(45.0),
          ),
          bottom: PreferredSize(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(25.0),
                    child: TextFormField(
                      decoration: new InputDecoration(
                          labelText: "عنوان",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueGrey),
                            //  when the TextFormField in unfocused
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueGrey),
                            //  when the TextFormField in focused
                          ),
                          border: UnderlineInputBorder()),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[item(), item1()],
                    ),
                  ),
                ],
              ),
              preferredSize: Size.square(200.0)
          ),
        ),
        body: ListView(
          children: <Widget>[

            Container(
              child: Row(
                children: <Widget>[item2(), item3()],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: new InputDecoration(
                    labelText: "Description",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      //  when the TextFormField in unfocused
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      //  when the TextFormField in focused
                    ),
                    border: UnderlineInputBorder()),
                keyboardType: TextInputType.text,
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('دسته بندی', style: TextStyle(color: Colors.blueGrey))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Chip(
                          label: Text("SPORT APP"),
                          backgroundColor: Colors.red,
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        Chip(
                          label: Text("MEDICAL APP"),
                        ),
                        Chip(
                          label: Text("RENT APP"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Chip(
                          label: Text("BANKING APP"),
                        ),
                        Chip(
                          label: Text("GAMING PLATFORM APP"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: RaisedButton(
                onPressed: click,
                child:
                Text('Create Task', style: TextStyle(color: Colors.white)),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
