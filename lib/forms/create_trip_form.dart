import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:tripleader/forms/form_fields/date_field.dart';
import 'package:tripleader/forms/form_fields/dropdown_field.dart';
import 'package:tripleader/forms/form_fields/route_field.dart';
import 'package:tripleader/forms/form_fields/text_field.dart';
import 'package:tripleader/forms/form_fields/time_field.dart';
import 'package:tripleader/models/activity_model.dart';
import 'package:tripleader/models/route_model.dart';
import 'package:tripleader/views/create_trip_view.dart';

class CreateTripForm extends StatefulWidget {
  const CreateTripForm({super.key});

  @override
  CreateTripFormState createState() {
    return CreateTripFormState();
  }
}

class CreateTripFormState extends State<CreateTripForm> {
  final _formKey = GlobalKey<FormState>();

  String _title = "";

  TripRoute _route = TripRoute([], 0);
  String _details = "";

  DateTime _tripDate = DateTime.now();
  bool _isMultiDay = false;
  DateTime _tripCompletionDate = DateTime.now().add(const Duration(days: 1));

  TimeOfDay _sarTime = TimeOfDay(hour: 17, minute: 0);
  Activity _activity = Activity.hiking;
  AbilityLevel _abilityLevel = AbilityLevel.Beginner;
  String _additionalInformation = "";


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextInputField(
            value: _title,
            onValueChanged: (value) {
              setState(() {
                _title = value;
              });
            },
            labelText: "Title *",
            icon: Icons.abc,
          ),
          RouteInputField(value: _route, onValueChanged: (value) {
            debugPrint("DISTANCE: ${value.distance}");
            setState(() {
              _route = value;
            });
          }, icon: Icons.route, labelText: 'Route *'),
          TextInputField(
            value: _details,
            onValueChanged: (value) {
              setState(() {
                _details = value;
              });
            },
            labelText: "Details",
            icon: Icons.map,
          ),
          Row(
            children: [
              Expanded(
                child: DateFormField(
                    labelText: "Trip Date *",
                    selectedDate: _tripDate,
                    onDateSelected: (selectedDate) {
                      setState(() {
                        _tripDate = selectedDate;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  children: [
                    Checkbox(
                      value: _isMultiDay,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isMultiDay = newValue ?? false;
                        });
                      },
                    ),
                    const Text("Multi-day")
                  ],
                ),
              ),
            ],
          ),
          _showTripCompletionField(),
          TimeInputField(value: _sarTime, labelText: "SAR Time *", onValueChanged: (value) {
            setState(() {
              _sarTime = value;
            });
          },),
          DropdownInputField(value: _activity, items: Activity.values, onValueChanged: (value) {
            setState(() {
              _activity = value;
            });
          }, icon: Icons.hiking, labelText: 'Activity * '),
          DropdownInputField(value: _abilityLevel, items: AbilityLevel.values, onValueChanged: (value) {
            setState(() {
              _abilityLevel = value;
            });
          }, icon: Icons.leaderboard, labelText: 'Ability Level *'),
          TextInputField(value: _additionalInformation, onValueChanged: (value) {
            setState(() {
              _additionalInformation = value;
            });
          }, icon: Icons.description, labelText: 'Additional Information'),

        ],
      ),
    );
  }

  Widget _showTripCompletionField() {
    if (_isMultiDay != true) {
      return SizedBox.fromSize(size: const Size(0, 0));
    }

    return DateFormField(
        labelText: "Trip Completion Date *",
        selectedDate: _tripCompletionDate,
        onDateSelected: (selectedDate) {
          setState(() {
            _tripCompletionDate = selectedDate;
          });
        });
  }
}
