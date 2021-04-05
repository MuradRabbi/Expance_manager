import 'package:flutter/material.dart';
import 'dart:math';




class ThreeDDraweScreen extends StatefulWidget {
  @override
  _ThreeDDraweScreenState createState() => _ThreeDDraweScreenState();
}

class _ThreeDDraweScreenState extends State<ThreeDDraweScreen> {

  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue[400],
                  Colors.blue[800]
                ],
                begin: Alignment.bottomCenter,
                end:Alignment.topCenter

              )
            ),
          ),
          SafeArea( 
            child: Container(  
              width: 200,
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  DrawerHeader(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                            "https://uifaces.co/our-content/donated/gpZwcbdS.jpg"
                          ) ,
                        ),
                        SizedBox(height:10),
                        Text("Wahid Murad", style:TextStyle(color:Colors.white, fontSize:20)),

                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        ListTile(
                          onTap:(){},
                          leading: Icon(Icons.home, color:Colors.white),
                          title: Text("Home",style:TextStyle(color:Colors.white)),
                        ),
                        ListTile(
                          onTap:(){},
                          leading: Icon(Icons.person, color:Colors.white),
                          title: Text("Profile",style:TextStyle(color:Colors.white)),
                        ),
                        ListTile(
                          onTap:(){},
                          leading: Icon(Icons.settings, color:Colors.white),
                          title: Text("Settings",style:TextStyle(color:Colors.white)),
                        ),
                        ListTile(
                          onTap:(){},
                          leading: Icon(Icons.logout, color:Colors.white),
                          title: Text("LogOut",style:TextStyle(color:Colors.white)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0 , end: value),
              duration: Duration(milliseconds: 500),
              builder: (_,double val,__){
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                      ..setEntry(3,2,0.001)
                      ..setEntry(0, 3, 200 * val)
                      ..rotateY((pi/6) * val),
                  child: Scaffold(
                    appBar: AppBar(
                      title: Text("3D Drawer"),
                      centerTitle: true,
                      leading: GestureDetector(
                        child: value == 0? Icon(Icons.menu, size: 24): Icon(Icons.arrow_back, size:24),
                        // onHorizontalDragUpdate: (e){
                        //   if(e.delta.dx > 0 ){
                        //     setState(() {
                        //        value = 1;
                        //
                        //     });
                        //   } else{
                        //     setState(() {
                        //       value = 0;
                        //     });
                        //   }
                        // },
                        onTap:(){
                          setState(() {
                            value == 0? value = 1 : value =0;
                          });
                        }
                      ),
                    ),
                    body: Center(
                      child: Text("This Is 3d Drawer"),
                    ),
                  ),
                );
              }
          )
        ],
      ),
    );
  }
}
