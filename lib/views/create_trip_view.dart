import 'package:flutter/material.dart';
import 'package:tripleader/forms/create_trip_form.dart';

class CreateTripView extends StatefulWidget {
  @override
  _CreateTripViewState createState() => _CreateTripViewState();
}

class _CreateTripViewState extends State<CreateTripView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Trip'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: CreateTripForm(
          onFormSubmit: (formData) {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Trip Created'),
                  content: Text(formData.toString()),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Close the dialog
                      },
                      child: Text('Close'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
