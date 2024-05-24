import 'package:flutter/material.dart';
import 'package:image_album/screen_sizes.dart';
import 'package:image_album/imagescreen.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:flutter/services.dart';


//List of Cards with color and icon

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Vehicle',
      //title: Image.asset('assets/images/easydoubt.png', fit: BoxFit.cover),
      home: SplashScreen(),

    );
  }
}
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration(seconds: 4),
          () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    MyHomePage()));
        // Navigator.pushReplacementNamed(context, '/home');
      },
    );
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(


        backgroundColor: Colors.pink,
        body: Center(


          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                  ),
                  child: Image.asset('assets/image/car.png',),
                ),

                //Image.asset('assets/images/book.png'),
      Container(
          child: Text('V',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),
          ),
        //color: Colors.black,
      ),
                Container(
                  child: LoadingAnimationWidget.flickr(
                    //color: Colors.white,
                    size: 70, leftDotColor: Colors.blue, rightDotColor: Colors.yellow,
                  ),
                )
              ]
          ),




        )

    );
  }

}


class MyHomePage extends StatefulWidget {


  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3,
        child: Scaffold(
        appBar: AppBar(
        title: Row(
        children: <Widget>[

          Container(
               child: Text('Vehicle',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),)),
          //Image.asset('assets/image/car.png', width: displayWidth(context) * 0.05, height: displayHeight(context) * 0.05,),
          Container(
            //margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
            ),
            child: Image.asset('assets/image/car.png', width: displayWidth(context) * 0.08, height: displayHeight(context) * 0.08,),),

        ]
    ),
        backgroundColor: Colors.pink,
        bottom: const TabBar(
          indicator: BoxDecoration(
             // borderRadius: BorderRadius.circular(50), // Creates border
              color: Colors.pinkAccent,shape: BoxShape.circle),
        tabs: [
          Tab(icon: Icon(Icons.electric_scooter_outlined)),
          Tab(icon: Icon(Icons.two_wheeler_outlined)),
          Tab(icon: Icon(Icons.directions_car_filled)),
        ],
        ),



    ),
            body: Container(
              child:  TabBarView(
        children:<Widget> [
          Container(
              child:ResponsiveGridList(
                horizontalGridSpacing: 6, // Horizontal space between grid items
                verticalGridSpacing: 16, // Vertical space between grid items
                horizontalGridMargin: 30, // Horizontal space around the grid
                verticalGridMargin: 50, // Vertical space around the grid
                minItemWidth: 350, // The minimum item width (can be smaller, if the layout constraints are smaller)
                minItemsPerRow: 2, // The minimum items to show in a single row. Takes precedence over minItemWidth
                maxItemsPerRow: 5, // The maximum items to show in a single row. Can be useful on large screens
                listViewBuilderOptions: ListViewBuilderOptions(),

                children: [
    InkWell(

        child: Card(

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 10,
            margin: EdgeInsets.all(10),

            child: Column(
              children: [

                Image.asset(
                  'assets/image/scooty/scooty1.png',

                  //fit: BoxFit.fill,
                ),

                Text("color - Blue and Orange \nPrice - Rs 80000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,color: Colors.black)  ),


              ],
            )
        ),


        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  imagescreen(
                URL: 'assets/image/scooty/scooty1.png',
            )
            ),
          );
            }
    ),
                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/scooty/scooty2.png',
                                fit: BoxFit.fill,
                              ),
                         Text("color - Sky Blue and dark Blue  \nPrice - Rs 85000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,color: Colors.black,), ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/scooty/scooty2.png',
                          )
                          ),
                        );
                      }
                  ),


                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/scooty/scooty3.png',
                                fit: BoxFit.fill,
                              ),


                              Text("color - orange and  Black  \nPrice - Rs 105000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,color: Colors.black) , ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/scooty/scooty3.png',
                          )
                          ),
                        );
                      }
                  ),

                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/scooty/scooty4.png',
                                fit: BoxFit.fill,
                              ),
                              Text("color - yellow and  Blue  \nPrice - Rs 105000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,color: Colors.black) , ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/scooty/scooty4.png',
                          )
                          ),
                        );
                      }
                  ),

                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/scooty/scooty5.png',
                                fit: BoxFit.fill,
                              ),
                              Text("color - White and  Black  \nPrice - Rs 105000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,color: Colors.black) , ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/scooty/scooty5.png',
                          )
                          ),
                        );
                      }
                  ),


                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/scooty/scooty6.png',
                                fit: BoxFit.fill,
                              ),
                              Text("color -   Orange and Black  \nPrice - Rs 205000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,color: Colors.black) , ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/scooty/scooty6.png',
                          )
                          ),
                        );
                      }
                  ),
                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/scooty/scooty7.png',
                                fit: BoxFit.fill,
                              ),
                              Text("color - Sky Blue  \nPrice - Rs 155000",maxLines: 20, style: TextStyle(fontSize: 16.0,color: Colors.black) , ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/scooty/scooty7.png',
                          )
                          ),
                        );
                      }
                  ),
                ],

              )
          ),
          Container(
            child:ResponsiveGridList(
                horizontalGridSpacing: 6, // Horizontal space between grid items
                verticalGridSpacing: 16, // Vertical space between grid items
                horizontalGridMargin: 30, // Horizontal space around the grid
                verticalGridMargin: 50, // Vertical space around the grid
                minItemWidth: 300, // The minimum item width (can be smaller, if the layout constraints are smaller)
                minItemsPerRow: 2, // The minimum items to show in a single row. Takes precedence over minItemWidth
                maxItemsPerRow: 5, // The maximum items to show in a single row. Can be useful on large screens
                listViewBuilderOptions: ListViewBuilderOptions(),

                children: [

                  //first card for
                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/bike/bike1.png',
                                fit: BoxFit.fill,
                              ),
                              Text("color - Tint   \nPrice - Rs 205000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,color: Colors.black) , ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/bike/bike1.png',
                          )
                          ),
                        );
                      }
                  ),
          // second card for
                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/bike/bike2.png',
                                fit: BoxFit.fill,
                              ),
                              Text("color - Red and  Black  \nPrice - Rs 255000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,color: Colors.black) , ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/bike/bike2.png',
                          )
                          ),
                        );
                      }
                  ),

          //third card for
                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/bike/bike3.png',
                                fit: BoxFit.fill,
                              ),
                              Text("color - Multicolor  \nPrice - Rs 155000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,color: Colors.black) , ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/bike/bike3.png',
                          )
                          ),
                        );
                      }
                  ),

                  //fourth card for
                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/bike/bike4.png',
                                fit: BoxFit.fill,
                              ),
                              Text("color - Red and  Black  \nPrice - Rs 155000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,color: Colors.black) , ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/bike/bike4.png',
                          )
                          ),
                        );
                      }
                  ),


                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/bike/bike5.png',
                                fit: BoxFit.fill,
                              ),
                              Text("color - Green  \nPrice - Rs 275000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,fontWeight:FontWeight.bold,color: Colors.black) , ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/bike/bike5.png',
                          )
                          ),
                        );
                      }
                  ),


                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/bike/bike6.png',
                                fit: BoxFit.fill,
                              ),
                              Text("color - Blue  \nPrice - Rs 275000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,fontWeight:FontWeight.bold,color: Colors.black) , ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/bike/bike6.png',
                          )
                          ),
                        );
                      }
                  ),

                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/bike/bike7.png',
                                fit: BoxFit.fill,
                              ),
                              Text("color - Silver and  Black  \nPrice - Rs 145000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,fontWeight:FontWeight.bold,color: Colors.black) , ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/bike/bike7.png',
                          )
                          ),
                        );
                      }
                  ),

                ]
        ),

    ),

          Container(
            child:ResponsiveGridList(
                horizontalGridSpacing: 6, // Horizontal space between grid items
                verticalGridSpacing: 16, // Vertical space between grid items
                horizontalGridMargin: 30, // Horizontal space around the grid
                verticalGridMargin: 50, // Vertical space around the grid
                minItemWidth: 300, // The minimum item width (can be smaller, if the layout constraints are smaller)
                minItemsPerRow: 2, // The minimum items to show in a single row. Takes precedence over minItemWidth
                maxItemsPerRow: 5, // The maximum items to show in a single row. Can be useful on large screens
                listViewBuilderOptions: ListViewBuilderOptions(),

                children: [
                  //first card for
                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/car/car1.png',
                                fit: BoxFit.fill,
                              ),
                              Text("color - Silver and  Black  \nPrice - Rs 805000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,fontWeight:FontWeight.bold,color: Colors.black) , ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/car/car1.png',
                          )
                          ),
                        );
                      }
                  ),

                  // second card for
                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/car/car2.png',
                                fit: BoxFit.fill,
                              ),
                              Text("color - Navy Blue  \nPrice - Rs 1005000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,fontWeight:FontWeight.bold,color: Colors.black) , ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/car/car2.png',
                          )
                          ),
                        );
                      }
                  ),

                  //third card for
                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/car/car3.png',
                                fit: BoxFit.fill,
                              ),
                              Text("color - Dark Red  \nPrice - Rs 1045000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,fontWeight:FontWeight.bold,color: Colors.black) , ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/car/car3.png',
                          )
                          ),
                        );
                      }
                  ),

                  //fourth card for
                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/car/car4.png',
                                fit: BoxFit.fill,
                              ),
                              Text("color - Yellow and  Black  \nPrice - Rs 1205000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,fontWeight:FontWeight.bold,color: Colors.black) , ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/car/car4.png',
                          )
                          ),
                        );
                      }
                  ),

                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/car/car5.png',
                                fit: BoxFit.fill,
                              ),
                              Text("color - Voilet  \nPrice - Rs 145000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,fontWeight:FontWeight.bold,color: Colors.black) , ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/car/car5.png',
                          )
                          ),
                        );
                      }
                  ),

                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/car/car6.png',
                                fit: BoxFit.fill,
                              ),
                              Text("color - Red  \nPrice - Rs 805000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,fontWeight:FontWeight.bold,color: Colors.black) , ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/car/car6.png',
                          )
                          ),
                        );
                      }
                  ),

                  InkWell(
                      child: Card(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          elevation: 10,
                          margin: EdgeInsets.all(10),

                          child: Column(
                            children: [
                              Image.asset(
                                'assets/image/car/car7.png',
                                fit: BoxFit.fill,
                              ),
                              Text("color -  Black  \nPrice - Rs 1945000",maxLines: 20, style: TextStyle(fontSize: 16.0 ,fontWeight:FontWeight.bold,color: Colors.black) , ),

                            ],
                          )
                      ),


                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  imagescreen(
                            URL: 'assets/image/car/car7.png',
                          )
                          ),
                        );
                      }
                  ),
                ]
            ),







          // Icon(Icons.music_note),
          // Icon(Icons.music_video),
          // Icon(Icons.camera_alt),
          )
          ],
        ),
            ),
        )
    )
        );

  }
}
class imagescreen extends StatelessWidget {
  final String URL;
  // const imagescreen(this.URL);
  const imagescreen({super.key, required this.URL});




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          backgroundColor: Colors.pink,
          //title: Text('App with Back Button'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Image.asset(URL),

        )
    );
  }


}