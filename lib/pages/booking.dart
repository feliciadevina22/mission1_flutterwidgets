import 'package:flutter/material.dart';

String dialogChat;
bool success;
var nameController = TextEditingController();
var emailController = TextEditingController();
var countryController = TextEditingController();
var addressController = TextEditingController();
var phoneController = TextEditingController();

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mission 2",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.white,
        shadowColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Studio Ghilbi Ticket Order Form",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.people,
                    color: Colors.teal,
                  ),
                  labelStyle: TextStyle(color: Colors.teal),
                  labelText: 'Your Name Here'),
            ),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  labelStyle: TextStyle(color: Colors.teal),
                  labelText: 'Your Email Address'),
            ),
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.phone_android,
                    color: Colors.teal,
                  ),
                  labelStyle: TextStyle(color: Colors.teal),
                  labelText: 'Your Phone Number'),
            ),
            TextField(
              controller: countryController,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.location_city,
                    color: Colors.teal,
                  ),
                  labelStyle: TextStyle(color: Colors.teal),
                  labelText: 'Your Country'),
            ),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.home,
                    color: Colors.teal,
                  ),
                  labelStyle: TextStyle(color: Colors.teal),
                  labelText: 'Your Address'),
            ),
            FlatButton.icon(
                onPressed: () {
                  //If textfield not filled
                  if (nameController.text != "" &&
                      emailController.text != "" &&
                      phoneController.text != "" &&
                      countryController.text != "" &&
                      addressController.text != "") {
                    dialogChat =
                        "Name: ${nameController.text} \nEmail: ${emailController.text}\nPhone: ${phoneController.text}\nCountry: ${countryController.text}\n Address: ${addressController.text}";
                    success = true;
                  } else {
                    dialogChat =
                        "Do you know that you have to fill all the text field ?";
                    success = false;
                  }
                  return buildShowDialog(context);
                },
                color: Colors.teal,
                textColor: Colors.white,
                icon: Icon(Icons.account_balance_wallet),
                label: Text("Book Ticket"))
          ],
        ),
      ),
    );
  }

  Future buildShowDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (contexts) {
          return AlertDialog(
            title: Text("Ticket Details Order"),
            content: Text(dialogChat),
            actions: [
              FlatButton(
                  onPressed: () {
                    if (success) {
                      print("hellaawww");
                      nameController.clear();
                      emailController.clear();
                      phoneController.clear();
                      countryController.clear();
                      addressController.clear();
                      Navigator.pop(contexts);
                      Navigator.pop(context);
                    } else {
                      Navigator.pop(contexts);
                    }
                  },
                  child: Text("Okay"))
            ],
          );
        });
  }
}
