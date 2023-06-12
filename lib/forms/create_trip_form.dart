import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:tripleader/forms/form_data_models/create_trip_form_data.dart';
import 'package:tripleader/forms/form_fields/date_field.dart';
import 'package:tripleader/forms/form_fields/dropdown_field.dart';
import 'package:tripleader/forms/form_fields/route_field.dart';
import 'package:tripleader/forms/form_fields/text_field.dart';
import 'package:tripleader/forms/form_fields/time_field.dart';
import 'package:tripleader/models/ability_level_model.dart';
import 'package:tripleader/models/activity_model.dart';
import 'package:tripleader/models/route_model.dart';
import 'package:tripleader/views/create_trip_view.dart';

class CreateTripForm extends StatefulWidget {
  final ValueChanged<CreateTripFormData> onFormSubmit;

  const CreateTripForm({super.key, required this.onFormSubmit});

  @override
  CreateTripFormState createState() {
    return CreateTripFormState();
  }
}

class CreateTripFormState extends State<CreateTripForm> {
  final _formKey = GlobalKey<FormState>();

  String _title = "";
  final TextEditingController _titleController = TextEditingController();

  TripRoute _route = TripRoute([], 0);
  String _details = "";
  final TextEditingController _detailsController = TextEditingController();

  DateTime _tripDate = DateTime.now();
  bool _isMultiDay = false;
  DateTime _tripCompletionDate = DateTime.now().add(const Duration(days: 1));

  TimeOfDay _sarTime = TimeOfDay(hour: 17, minute: 0);
  Activity _activity = Activity.hiking;
  AbilityLevel _abilityLevel = AbilityLevel.beginner;
  String _additionalInformation = "";
  final TextEditingController _additionalInformationController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextInputField(
            value: _title,
            controller: _titleController,
            onValueChanged: (value) {
              setState(() {
                _title = _titleController.text + value;
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
            controller: _detailsController,
            onValueChanged: (value) {
              setState(() {
                _details = _detailsController.text + value;
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
          TimeInputField(
            value: _sarTime, labelText: "SAR Time *", onValueChanged: (value) {
            setState(() {
              _sarTime = value;
            });
          },),
          DropdownInputField(value: _activity,
              items: Activity.values,
              onValueChanged: (value) {
                setState(() {
                  _activity = value;
                });
              },
              icon: Icons.hiking,
              labelText: 'Activity * '),
          DropdownInputField(value: _abilityLevel,
              items: AbilityLevel.values,
              onValueChanged: (value) {
                setState(() {
                  _abilityLevel = value;
                });
              },
              icon: Icons.leaderboard,
              labelText: 'Ability Level *'),
          TextInputField(controller: _additionalInformationController,
              value: _additionalInformation,
              onValueChanged: (value) {
                setState(() {
                  _additionalInformation =
                      _additionalInformationController.text + value;
                });
              },
              icon: Icons.description,
              labelText: 'Additional Information'),

          ElevatedButton(
              onPressed: handleFormSubmit, child: Text("Create Trip")),

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

  void handleFormSubmit() {
    var formData = CreateTripFormData(
        _title,
        _route,
        _details,
        _tripDate,
        _tripCompletionDate,
        _sarTime,
        _activity,
        _abilityLevel,
        _additionalInformation);

    widget.onFormSubmit(formData);
  }
}
