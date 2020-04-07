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
Column(
children: <Widget>[
Text('Good morning!',
style: TextStyle(
fontWeight: FontWeight.bold,
letterSpacing: 0.2
)),
Padding(
padding: const EdgeInsets.fromLTRB(10,0,20,0),
child: FlatButton(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20),
),
onPressed: () {},
color: Colors.blue[300],
child: Text('Search',
style: TextStyle(
color: Colors.white
),)),
),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            RawMaterialButton(
                              padding: EdgeInsets.all(20.0),
                              fillColor: Theme.of(context).cardColor,
                              shape: CircleBorder(),
                              child: Icon(FontAwesome5Solid.temperature_high),
                            ),
                            RawMaterialButton(
                              padding: EdgeInsets.all(20.0),
                              fillColor: Theme.of(context).cardColor,
                              shape: CircleBorder(),
                                child: Icon(MaterialCommunityIcons.calendar),
                            ),
                            RawMaterialButton(
                              padding: EdgeInsets.all(25.0),
                              fillColor: Theme.of(context).cardColor,
                              shape: CircleBorder(),
                              child: Icon(Ionicons.md_musical_note),
                            ),
                            RawMaterialButton(
                              padding: EdgeInsets.all(25.0),
                              fillColor: Theme.of(context).cardColor,
                              shape: CircleBorder(),
                              child: Icon(MaterialCommunityIcons.file_document_box_outline),
                            ),
                          ],
                        ),
                      ],
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





                          







