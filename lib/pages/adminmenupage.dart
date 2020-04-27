import 'package:flutter/material.dart';

class AdminMenu extends StatelessWidget {
  List<Map<String, dynamic>> building = [
    {
      'title': 'Towing Requests in Progress',
      'callToAction': '/towingprogress'
    },

    {
      'title': 'Completed Towing Requests',
      'callToAction': ''
    },

    {
      'title': 'Vehicle Paper Renewals',
      'callToAction': ''
    },

    
    {
      'title': 'App Users',
      'callToAction': ''
    },


    {
      'title': 'Towing Services Payments',
      'callToAction': ''
    },


    {
      'title': 'vehicle Paper Renewal Payments',
      'callToAction': ''
    },


    {
      'title': 'Spare Parts and Merchandise Payments',
      'callToAction': ''
    },

    {
      'title': 'Prices',
      'callToAction': ''
    },
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Admin Menu',
          // textAlign: TextAlign.end,
        ),
      ),
      body: Center(
          child: Container(
            // color: Colors.blue,
            padding: const EdgeInsets.all(2.0),
            margin: EdgeInsets.all(30.0),
            child: GridView.builder(
              shrinkWrap: true,
              // physics: ScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: building.length ,
              itemBuilder: (BuildContext context, int index) {
                final currentItem = building[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, currentItem['callToAction']).toString();
                  },
                  child: Card(
                    // color: Colors.blue,
                    elevation: 2.0,
                    child: Container(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[                          
                                Text(currentItem['title'], 
                                style:  TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                                ),
                              ],
                          ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),      
    );
  }
}