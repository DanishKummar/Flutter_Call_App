import 'package:call_app/make_call_class.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MakeCall());
}

// data from make class ===> MakeCall
MakePhoneCall makeCall = MakePhoneCall();

class MakeCall extends StatelessWidget {
  const MakeCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text("Make Call", style: TextStyle(color: Colors.white)),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            // user saved contact icon
            leading: CircleAvatar(child: Icon(Icons.person)),
            // user saved contact name
            title: Text(
              "Bro Jagdesh",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            // uer saved conatct
            subtitle: Text(
              "+923062888468",
              style: TextStyle(
                color: const Color.fromARGB(255, 223, 222, 222),
                fontWeight: FontWeight.bold,
              ),
            ),
            // make call to contact
            trailing: IconButton(
              // make call functionality
              onPressed: () {
                // MakePhoneCall.makePhoneCall(number)
                makeCall.makePhoneCall("+923062888468");
                print("Call success");
              },
              icon: Icon(Icons.call, color: Colors.green, size: 38),
            ),
          ),
        ],
      ),
    );
  }
}
