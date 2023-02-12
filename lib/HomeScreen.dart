import 'package:flutter/material.dart';
import 'package:zoom_metting/CallPage.dart';

class HomeScreen extends StatelessWidget {
 final callid=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: TextFormField(
                    controller: callid,
                    decoration: InputDecoration(
                      labelText: 'Join a call by id',
                      hintText: 'write calling id here..'
                    ),
                  )),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CallPage(callid: callid.text)));
                  },
                  child: Text('join')
              )
            ],
          ),
        ),
      ),
    );
  }
}
