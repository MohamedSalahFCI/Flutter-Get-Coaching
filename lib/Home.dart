import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //final MediaQueryData = MediaQuery.of(context);
    //final Size = MediaQueryData.size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: new FlutterLogo(
          colors: Colors.green,
          size: 40.0,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back),
          color: Colors.grey,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu),
            color: Colors.grey,
          ),
          
        ],
      ),
      
      body:ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 20,),
              Center(
                child: Text("Get Coaching",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 60.0, 25.0, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius:2.0,
                      color: Colors.grey

                    )
                  ]
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: new Text('YOU HAVE',
                          style: TextStyle(color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0),),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                          child: new Text('206',
                          style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0),
                          ),),
                          Container(
                          padding: EdgeInsets.fromLTRB(100.0, 50.0, 5.0, 25.0),
                          child: new Icon(Icons.favorite_border,color: Colors.red,), 
                          ),
                      ],
                    ),
                    SizedBox(width: 60.0,),
                    Container(
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: new Text('Buy more',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green
                        ),),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 40.0,),
              Container(
                //color: Colors.black,
                padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('MY COACHERS',
                    style: TextStyle(color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0),
                    ),
                    Text('VIEW PAST SESSIONS',
                    style: TextStyle(color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 4.0,
                //ana mesh 3arf eh faydt dh 
                shrinkWrap: true,
                children: <Widget>[
                 _buildCard('Tom', 'Available', 1),
              _buildCard('Tom', 'Away', 2),
              _buildCard('Tom', 'Away', 3),
              _buildCard('Tom', 'Available', 4),
              _buildCard('Tom', 'Away', 5),
              _buildCard('Tom', 'Available', 6),

                ],
              )
            ],
          )
         
        ],     
      ) ,
      
    );
  }
Widget _buildCard(String name, String status, int cardIndex) {
    return Card( 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      elevation: 7.0,
      child: Column(
        children: <Widget>[
          SizedBox(height: 12.0),
          Stack(
            children: <Widget>[
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.green,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'
                    )
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40.0),
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: status == 'Away' ? Colors.amber : Colors.green,
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0
                  )
                ),
              )
            ]),
              SizedBox(height: 8.0),
              Text(
                name,
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                status,
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.grey
                ),
              ),
              SizedBox(height: 15.0),
              Expanded(
                child: Container(
                  width: 175.0,
                  decoration: BoxDecoration(
                    color: status == 'Away' ? Colors.grey: Colors.green,
                    borderRadius: BorderRadius.only
                    (
                      bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)
                  ),
                ),
                child: Center(
                  child: Text('Request',
                  style: TextStyle(
                    color: Colors.white, fontFamily: 'Quicksand'
                  ),
                ),
              )
              )
              )
            ],
          ),
      margin: cardIndex.isEven? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0):EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0)
     );
  }
}