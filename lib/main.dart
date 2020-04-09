import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.darkThemeEnabled,
      initialData: false,
      builder: (context, snapshot) => MaterialApp(
        theme: snapshot.data?ThemeData.dark():ThemeData.light(),
        home: StartPage(snapshot.data)
      ),
    );
  }
}

class StartPage extends StatelessWidget {

  
  final bool darkThemeEnabled;

  StartPage(this.darkThemeEnabled,);



  @override
  Widget build(BuildContext context) {

    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
          Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Icon(FontAwesome.microphone,),
          ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        extendBodyBehindAppBar: true,
      drawer: Drawer(
child: ListView(
children: <Widget>[
Column(
children: <Widget>[
Padding(
padding: const EdgeInsets.only(top: 20.0),
child: Row(
children: <Widget>[
RawMaterialButton(
onPressed: () {},
child: Icon(Ionicons.ios_person, color: Colors.white, size: 40,),
shape: CircleBorder(),
fillColor: Colors.teal[300],
padding: EdgeInsets.all(10),
),
SizedBox(width: 10.0),
Column(
children: <Widget>[
Padding(
  padding: const EdgeInsets.only(left: 8.0),
  child:   Text('Good morning!',
  style: TextStyle(
  fontWeight: FontWeight.bold,
  letterSpacing: 0.2
  )),
),
SizedBox(height: 5.0,),
FlatButton(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20),
),
onPressed: () {},
color: Colors.blue[300],
child: Text('Search',
style: TextStyle(
color: Colors.white
),)),
],
)
],
),
),
SizedBox(height: _height * 0.05),
Column(
children: <Widget>[
Padding(
padding: const EdgeInsets.only(left: 28.0),
child: Row(
children: <Widget>[
Text('Favorite Apps',
style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 16
),)
],
),
),
Padding(
padding: const EdgeInsets.symmetric(horizontal: 29.0),
child: Divider(
thickness: 2,
color: Colors.grey[300],
),
),
Padding(
padding: const EdgeInsets.only(left: 45.0,),
child: Column(
children: <Widget>[
SizedBox(height: _height * 0.02),
Row(
children: <Widget>[
Icon(Entypo.camera, size: 20,),
SizedBox(width: _width * 0.05),
Text('Camera'),
],
),
SizedBox(height: _height * 0.025),
Row(
children: <Widget>[
Icon(Icons.image, size: 20,),
SizedBox(width: _width * 0.05),
Text('Gallery'),
],
),
SizedBox(height: _height * 0.025),
Row(
children: <Widget>[
Icon(Entypo.facebook, size: 20,),
SizedBox(width: _width * 0.05),
Text('Facebook'),
],
),
SizedBox(height: _height * 0.025),
Row(
children: <Widget>[
Icon(Entypo.google__with_circle, size: 20,),
SizedBox(width: _width * 0.05),
Text('Google+'),
],
),
SizedBox(height: _height * 0.025),
Row(
children: <Widget>[
Icon(MaterialCommunityIcons.web, size: 20,),
SizedBox(width: _width * 0.05),
Text('Internet'),
],
),
],
),
),
],
),
SizedBox(height: _height * 0.07),
Padding(
padding: const EdgeInsets.only(left: 28.0),
child: Row(
children: <Widget>[
Text('Settings',
style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 16
),)
],
),
),
Padding(
padding: const EdgeInsets.symmetric(horizontal: 29.0),
child: Divider(
thickness: 2,
color: Colors.grey[300],
),
),
Padding(
padding: const EdgeInsets.fromLTRB(30,0,0,0),
child: Column(
children: <Widget>[
ListTile(
title: Text('Dark Mode'),
subtitle: Text('Switch between light & dark mode',
style: TextStyle(
fontSize: 10,
)),
trailing: Switch(
value: darkThemeEnabled,
onChanged: bloc.changedTheme,
),
),
ListTile(
title: Text('Nav Bar'),
subtitle: Text('Enable or disable nav bar',
style: TextStyle(
fontSize: 10,
)),
trailing: Switch(
value: true,
onChanged: null,
),
),
ListTile(
title: Text('Wi-Fi'),
subtitle: Text('Turn Wi-Fi on or off',
style: TextStyle(
fontSize: 10,
)),
trailing: Switch(
value: true,
onChanged: null,
),
),
SizedBox(height: 10.0),
Padding(
padding: const EdgeInsets.only(right: 30.0,),
child: Row(
mainAxisAlignment: MainAxisAlignment.end,
children: <Widget>[
IconButton(
icon: Icon(AntDesign.left, size: 12,),
onPressed: () {
Navigator.pop(context);
},),
Text('Back'),
],
),
),
      ], ),
)
],
),
],),
      ),
        body: Container(
          height: _height,
          width: _width,
          child: Column(
            children: <Widget>[
              Container(
                width: _width,
                height: _height * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/san.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: _height * 0.5,
                    width: _width,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RawMaterialButton(
                                padding: EdgeInsets.all(20.0),
                                onPressed: () {},
                                fillColor: Theme.of(context).cardColor,
                                shape: CircleBorder(),
                                child: Icon(FontAwesome5Solid.temperature_high, color: Colors.greenAccent[700]),
                              ),
                              RawMaterialButton(
                                padding: EdgeInsets.all(20.0),
                                onPressed: () {},
                                fillColor: Theme.of(context).cardColor,
                                shape: CircleBorder(),
                                  child: Icon(MaterialCommunityIcons.calendar, color: Colors.teal[600]),
                              ),
                              RawMaterialButton(
                                padding: EdgeInsets.all(25.0),
                                onPressed: () {},
                                fillColor: Theme.of(context).cardColor,
                                shape: CircleBorder(),
                                child: Icon(Ionicons.md_musical_note, color: Colors.orange[600]),
                              ),
                              RawMaterialButton(
                                padding: EdgeInsets.all(25.0),
                                onPressed: () {},
                                fillColor: Theme.of(context).cardColor,
                                shape: CircleBorder(),
                                child: Icon(MaterialCommunityIcons.file_document_box_outline, color: Colors.purple),
                              ),
                            ],
                          ),
                          SizedBox(height: _height * 0.04,),
                          Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                      Text('Tuesday, Jan 30',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height: 15.0),
                      Text('The time is 11:00AM and you have 71% battery left. Todays \nhigh temperature is going to be 44 with a low of 25.',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),),
                      SizedBox(height: _height * 0.08,),
                      Row(
                        children: <Widget>[
                          Padding(
padding: const EdgeInsets.fromLTRB(10,0,20,0),
child: FlatButton(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20),
),
color: Colors.blue,
onPressed: () {},
child: Text('CALL',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold
),)),
),
Padding(
padding: const EdgeInsets.fromLTRB(10,0,20,0),
child: FlatButton(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20),
),
onPressed: () {},
child: Text('TEXT',
style: TextStyle(
fontWeight: FontWeight.bold
),)),
),
Padding(
padding: const EdgeInsets.fromLTRB(10,0,20,0),
child: FlatButton(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20),
),
onPressed: () {},
child: Text('EMAIL',
style: TextStyle(
fontWeight: FontWeight.bold
),)),
),
                        ],
                      ),
                  ],
                ),
               ),
                        ],
                      ),
                    ),
                    ),
                  Positioned(
                    top: -36,
                    right: 30,
                    child: RawMaterialButton(
                      elevation: 1.0,
                      fillColor: Theme.of(context).cardColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.yellow,
                              ),
                            ),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('It\'s now 32 F',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16
                                ),),
                                SizedBox(height: 5.0),
                                Text('In Dacula'),
                              ],
                            ),
                            SizedBox(width: 100,),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue,
                              ),
                              child: Icon(FontAwesome.location_arrow,
                                  color: Colors.white,
                              size: 18.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
                overflow: Overflow.visible,
              ),
              
            ],
          ),
        ),
      );
  }

  }

class Bloc {
  final _themeController = StreamController<bool>();
  get changedTheme => _themeController.sink.add;
  get darkThemeEnabled => _themeController.stream;
}

final bloc = Bloc();





                          







