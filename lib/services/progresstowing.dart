import 'package:flutter/material.dart';
import 'package:vehispace_admin/widgets/switch.dart';

class TowingRequestProgress extends StatelessWidget {
  List<Map<String, dynamic>> requests = [
    {
      'name' : 'Orakwe Chiamaka Ikechi',
      'RegNo' : '24366n9u',
      'PickUp' : 'Abraham Adesanya',
      'Destination' : 'epe'
    },

    {
      'name' : 'Orakwe Chiamaka Ikechi',
      'RegNo' : '24366n9u',
      'PickUp' : 'Abraham Adesanya',
      'Destination' : 'epe'
    },

    {
      'name' : 'ikechiorakwe@gmail.com',
      'RegNo' : '24366n9u',
      'PickUp' : 'Abraham Adesanya',
      'Destination' : 'epe'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Towing Request in Progress',
        ),
      ),
      body: Container(
        // color: Color(0xff003399),
        child: ListView.builder(
          physics: ScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
          itemCount: requests.length,
          itemBuilder: (BuildContext context, int index) {
            final currentItem = requests[index];
            return Container(
              // color: Color(0xff003399),
              padding: EdgeInsets.only(bottom: 20.0, ),
              child: Card(
            
                // margin: EdgeInsets.all(8.0),
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     Container(
                       padding: EdgeInsets.only(left: 8, right: 8),
                       height:  MediaQuery.of(context).size.height *0.06,
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Text('Name/Email Address', style: TextStyle(fontWeight:FontWeight.bold)),
                           Text(currentItem['name']),
                         ],
                       ),
                     ),
                    Divider(color: Color(0xff003399).withOpacity(0.09)),
                    Container(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      height:  MediaQuery.of(context).size.height *0.06,
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Text('Vehicle Reg No', style: TextStyle(fontWeight:FontWeight.bold),),
                           Text(currentItem['RegNo']),
                         ],
                       ),
                    ),
                    Divider(color: Color(0xff003399).withOpacity(0.09)),
                    Container(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      height:  MediaQuery.of(context).size.height *0.06,
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Text('Pick Up Point', style: TextStyle(fontWeight:FontWeight.bold)),
                           Text(currentItem['PickUp']),
                         ],
                       ),
                    ),  
                    Divider(color: Color(0xff003399).withOpacity(0.09)),
                    Container(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      height:  MediaQuery.of(context).size.height *0.06,
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Text('Destination', style: TextStyle(fontWeight:FontWeight.bold)),
                           Text(currentItem['Destination']),
                         ],
                       ),
                    ), 
                    Divider(color: Color(0xff003399).withOpacity(0.09)),
                    Container(
                      padding: EdgeInsets.only(left: 8, right: 8),
                      height:  MediaQuery.of(context).size.height *0.06,
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Text('Status:', style: TextStyle(fontWeight:FontWeight.bold)),
                           Switches(),
                         ],
                       ),
                    ),  
                    
                  ],
                ),
              ),
            );
            
          }
          
        ),
      ),
      
      
    );
  }
}