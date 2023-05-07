import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(
  home :Home(),
));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int rollnumber=1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Id card of Kamal'), // Addin
        centerTitle: true,
        backgroundColor:Colors.grey[850],
        elevation: 10.0,
        foregroundColor: Colors.green[800],
      ),
      floatingActionButton: FloatingActionButton(                               //Floating button with on press method
        onPressed: (){
          setState(() {
            rollnumber+=1;
          });
        },
        backgroundColor: Colors.green[800],
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding:EdgeInsetsDirectional.fromSTEB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/kamal.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 40.0,
              color: Colors.grey[850],
            ),
            Text(                                       //Name Text Hare
              'Name',
              style:TextStyle(
                color: Colors.grey,
                letterSpacing: 1.0,
                fontSize: 15.0,
              ),
            ),
            Text(
              'Kamal deep',
              style:TextStyle(
                color: Colors.blue,
                letterSpacing: 1.0,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(                                        //Course Text here
              'Course',
              style:TextStyle(
                  color: Colors.grey,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0
              ),
            ),
            Text(
                'B.Tech',
              style:TextStyle(
                color: Colors.blue,
                letterSpacing: 1.0,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(                                               //Roll number text here
              'Roll Number',
              style:TextStyle(
                color: Colors.grey,
                letterSpacing: 1.0,
                fontSize: 15.0,
              ),
            ),
            Text(
              '$rollnumber',
              style:TextStyle(
                color: Colors.blue,
                letterSpacing: 1.0,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(                                                     //Branch text here
              'Branch',
              style:TextStyle(
                  color: Colors.grey,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0
              ),
            ),
            Text(
              'Information Technology',
              style:TextStyle(
                color: Colors.blue,
                letterSpacing: 1.0,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0),
            Row(                                      // Here is adding the email
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.yellowAccent[400],
                  size: 25.0,
                ),
                SizedBox(width:10.0),
                Text(
                  'kamaldeep1234@gmail.com',
                  style: TextStyle(
                    color: Colors.yellow[400],
                    letterSpacing: 2.0,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0,),                //This is add the extra space
            Row(                                     //Here is the adding the contct
              children: <Widget>[
                Icon(
                  Icons.contact_phone,
                  color:Colors.deepOrange,
                ),
                SizedBox(width: 10.0,),
                Text(
                  '6386443150',
                  style: TextStyle(
                    color: Colors.green[900],
                    letterSpacing: 1.0,
                    fontSize: 20.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
