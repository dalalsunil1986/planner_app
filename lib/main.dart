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
          title: Text('Dynamic Theme'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
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
                            child: Icon(Ionicons.ios_person, color: Colors.black, size: 40,),
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
                              borderRadius: BorderRadius.circular(20)
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
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                            IconButton(
                              icon: Icon(AntDesign.left, size: 12,),
                              onPressed: () {
                                Navigator.pop(context);
                              },),
                          Text('Back')
                        ],
                      ),
                    ),
                      ],
                    ),
                  ),
                ],
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




                          







