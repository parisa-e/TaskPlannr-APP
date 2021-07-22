import 'package:flutter/material.dart';
import 'package:start_flutter/today_page.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:start_flutter/widgets/task_column.dart';
import 'package:start_flutter/widgets/active_project_card.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  static CircleAvatar calendarIcon(){
    return CircleAvatar(
      radius: 25.0,
      backgroundColor: Color(0x309397).withOpacity(1.0),
      child: Icon(
        Icons.calendar_today,
        size: 20.0,
        color: Colors.white,
      ),
    );
  }
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static CircleAvatar calendarIcon(){
    return CircleAvatar(
      radius: 25.0,
      backgroundColor: Color(0x309397).withOpacity(1.0),
      child: Icon(
        Icons.calendar_today,
        size: 20.0,
        color: Colors.white,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {

    item(){
      return Container(
        padding: EdgeInsets.all(20.0),
        child:
        Text('My tasks',style: TextStyle(fontSize: 26.0),),
      );
    }

    item1(){
      return Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TodayPage()),
            );
          },
          child: calendarIcon(),
        ),
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.square(170.0),
        child: AppBar(
          backgroundColor: Color(0xf9be7c).withOpacity(1.0),
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
          shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
              )
          ),
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon( Icons.account_circle,
                    size: 90.0,
                    color: Colors.white,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Prisa Ettehad',
                        style: TextStyle(color: Colors.black,fontSize: 30.0),
                      ),
                      Text(
                        'Web developer',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[item(),item1()],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 15.0),
                TaskColumn(
                  icon: Icons.alarm,
                  iconBackgroundColor: Color(0xE46472).withOpacity(1.0),
                  title: 'To Do',
                  subtitle: '5 tasks now. 1 started',
                ),
                SizedBox(
                  height: 15.0,
                ),
                TaskColumn(
                  icon: Icons.blur_circular,
                  iconBackgroundColor: Color(0xf9be7c).withOpacity(1.0),
                  title: 'In Progress',
                  subtitle: '1 tasks now. 1 started',
                ),
                SizedBox(height: 15.0),
                TaskColumn(
                  icon: Icons.check_circle_outline,
                  iconBackgroundColor: Color(0x6488E4).withOpacity(1.0),
                  title: 'Done',
                  subtitle: '18 tasks now. 13 started',
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child:
            Text('Active Projects',style: TextStyle(fontSize: 26.0),),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                ActiveProjectsCard(
                  cardColor: Color(0x309397).withOpacity(1.0),
                  loadingPercent: 0.25,
                  title: 'Medical App',
                  subtitle: '9 hours progress',
                ),
                SizedBox(width: 20.0),
                ActiveProjectsCard(
                  cardColor: Color(0xE46472).withOpacity(1.0),
                  loadingPercent: 0.75,
                  title: 'Sports App',
                  subtitle: '5 hours progress',

                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                ActiveProjectsCard(
                  cardColor: Color(0xf9be7c).withOpacity(1.0),
                  loadingPercent: 0.45,
                  title: 'Making History Notes',
                  subtitle: '20 hours progress',
                ),
                SizedBox(width: 20.0),
                ActiveProjectsCard(
                  cardColor: Color(0x6488E4).withOpacity(1.0),
                  loadingPercent: 0.9,
                  title: 'Online Flutter Course',
                  subtitle: '23 hours progress',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
