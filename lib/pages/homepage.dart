import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vehispace_admin/widgets/customraisedbutton.dart';
import 'dart:async';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double currentpage = 0;
  PageController controller = PageController(
    initialPage: 0,
  );
  
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (currentpage < 3) {
        currentpage++;
      }
      else{
        currentpage = 0;
      }
      print('Current Page is' + currentpage.toString());
      controller.animateToPage(currentpage.toInt(), duration: Duration(microseconds: 300), curve: Curves.bounceIn);
    });
  }


  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
           child: Center(
             child: Column(
               mainAxisAlignment:MainAxisAlignment.center,
               children: <Widget>[
                 Flexible(
                   child: Image(
                     image: AssetImage('assets/logo/logo.png'),
                     height: 80,
                   ),
                 ),
                 SizedBox(
                   height: 300,
                   child: PageView(
                     physics: ScrollPhysics(),
                     controller: controller,
                     children: <Widget>[
                       Column(
                         children: <Widget>[
                           Image.asset('assets/images/Asset1.png'),
                           Padding(
                             padding: EdgeInsets.only(top: 16, bottom: 8),
                             child: Text("Maintennce Updates", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                           ),
                         ],
                       ),
                       Column(
                         children: <Widget>[
                           Image.asset('assets/images/Asset2.png'),
                           Padding(
                             padding: EdgeInsets.only(top: 16, bottom: 8),
                             child: Text("Towing Service", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                           ),
                         ],
                       ),
                       Column(
                         children: <Widget>[
                           Image.asset('assets/images/Asset3.png'),
                           Padding(
                             padding: EdgeInsets.only(top: 16, bottom: 8),
                             child: Text("Spare Part Merchandise", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                           ),
                         ],
                       ),
                      Column(
                        children: <Widget>[
                          Image.asset('assets/images/Asset4.png'),
                          Padding(
                            padding: EdgeInsets.only(top: 16, bottom: 8),
                            child: Text("Vehicle Papers Renewal", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                     ],
                   ),
                 ),
                 Container(
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: 4,
                        effect: SlideEffect(
                            spacing: 8.0,
                            radius: 4.0,
                            dotWidth: 24.0,
                            dotHeight: 10.0,
                            dotColor: Colors.grey,
                            paintStyle: PaintingStyle.stroke,
                            strokeWidth: 2,
                            activeDotColor: Color(0xff003399),
                        ),
                      ),
                    ),
                 SizedBox(
                   height: MediaQuery.of(context).size.width * 0.2,
                 ),
                 Container(
                   padding: const EdgeInsets.all(15.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       
                          CustomRaisedButton(
                           onPressed: (){
                             Navigator.pushNamed(context, '/login');
                           },
                           text: 'Login',
                           elevation: 1.0,
                           color: Color(0xff003399),
                           textColor: Colors.white,
                         ),
                       
                      //  SizedBox(
                      //    width: MediaQuery.of(context).size.width * 0.02,
                      //  ),
                      //  Expanded(
                      //       child: CustomRaisedButton(
                      //         onPressed: () {
                      //           Navigator.pushNamed(context, '/register');
                      //         },
                      //         text: 'Register',
                      //         elevation: 1.0,
                      //         color: Colors.white,
                      //         textColor: Color(0xff003399),
                      //         borderWidth: 2.0,
                      //         borderColor: Color(0xff003399),
                      //       ),
                      //     ),
                     ],
                   ),
                  ),
                      SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
               ],
               ),
           ),
         ),

    );
  }
}