import 'package:flutter/material.dart';

void main() => runApp(mine());


class mine extends StatelessWidget {
  const mine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          //shadowColor: Colors.blueGrey,
          backgroundColor: Colors.blueGrey[900],
          title: Center(child: Text('True/False',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
        ),
        backgroundColor: Colors.black,
        body:SafeArea(
          child: bod(),
        ) ,

      ),
    );
  }
}

class bod extends StatefulWidget {
  const bod({super.key});

  @override
  State<bod> createState() => _bodState();
}

class _bodState extends State<bod> {
  @override
  int done=0;
  List<Icon> disp =[];
  List<String> quest=[
    'Are you Here?',
    'Are you sure?',
    'i mean the fact that you are here convinces me that you are',
    'addition',
    'subtraction'
  ];
  List<bool>check=[false,false,true,false,false];
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[700],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch ,

        children:<Widget> [

          Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 60),
              child: Text(quest[done],style: TextStyle(fontWeight:FontWeight.bold),)
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget> [
                Expanded(
                  child: ElevatedButton(onPressed:(){setState(() {
                    if(check[done]==true)
                      {
                    disp.add(Icon(Icons.check));
                      }
                    else
                    {
                      disp.add(Icon(Icons.close));
                    }
                    done++;
                  });} , child: Text('True',style: TextStyle(color: Colors.black)),

                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Expanded(

                  child: ElevatedButton(onPressed:(){ setState(() {
                    if(check[done]==false)
                      {
                    disp.add(Icon(Icons.close));
                      }
                    else
                      {
                        disp.add(Icon(Icons.check));
                      }
                    done++;
                  });},style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red) , child: Text('False',style: TextStyle(color: Colors.white),),

                  ),

                ),

              ],
            ),
          )
          ,Row(children:disp,)
        ],
      ),
    );
  }
}

