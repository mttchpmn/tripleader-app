import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:tripleader/components/create_route_widget.dart';

enum ActivityType { Hiking, SeaKayaking }

enum AbilityLevel { Novice, Beginner, Intermediate, Advanced, Expert }

class CreateTripView extends StatefulWidget {
  @override
  _CreateTripViewState createState() => _CreateTripViewState();
}

class _CreateTripViewState extends State<CreateTripView> {
  bool? _isMultiDay = false;
  DateTime? _tripDate;
  DateTime? _completionDate;
  String? _tripTitle = "";
  TimeOfDay? _sarTime;
  String? _routeDistance = "";
  String? _details = "";
  ActivityType? _selectedActivityType = null;
  AbilityLevel? _selectedAbilityLevel = null;
  String? _additionalInformation = "";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _openCreateRouteWidget(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CreateRouteWidget(initialPosition: LatLng(-45.019022, 168.741764), onRouteCreated: (route) {},),
      ),
    );
  }

  Widget _buildTripDateField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Trip Date'),
      onTap: () async {
        final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
        );
        if (picked != null) {
          setState(() {
            _tripDate = picked;
          });
        }
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a trip date.';
        }
        return null;
      },
    );
  }

  Widget _buildCompletionDateField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Completion Date'),
      enabled: _isMultiDay,
      onTap: () async {
        final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
        );
        if (picked != null) {
          setState(() {
            _completionDate = picked;
          });
        }
      },
      validator: (value) {
        if (_isMultiDay! && (value == null || value.isEmpty)) {
          return 'Please enter a completion date.';
        }
        return null;
      },
    );
  }

  Widget _buildTripTitleField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Trip Title'),
      onChanged: (value) {
        setState(() {
          _tripTitle = value;
        });
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a trip title.';
        }
        return null;
      },
    );
  }

  Widget _buildSarTimeField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'SAR Time'),
      onTap: () async {
        final TimeOfDay? picked = await showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        );
        if (picked != null) {
          setState(() {
            _sarTime = picked;
          });
        }
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a SAR time.';
        }
        return null;
      },
    );
  }

  Widget _buildRouteField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Route'),
        ElevatedButton(
          onPressed: () {
            _openCreateRouteWidget(context);
          },
          child: Text('Edit Route'),
        ),
      ],
    );
  }

  Widget _buildDetailsField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Details'),
      onChanged: (value) {
        setState(() {
          _details = value;
        });
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter trip details.';
        }
        return null;
      },
    );
  }

  Widget _buildActivityTypeDropdown() {
    return DropdownButtonFormField<ActivityType>(
      decoration: InputDecoration(labelText: 'Activity Type'),
      value: _selectedActivityType,
      onChanged: (value) {
        setState(() {
          _selectedActivityType = value;
        });
      },
      items: ActivityType.values.map((activityType) {
        return DropdownMenuItem<ActivityType>(
          value: activityType,
          child: Text(activityType.toString().split('.').last),
        );
      }).toList(),
      validator: (value) {
        if (value == null) {
          return 'Please select an activity type.';
        }
        return null;
      },
    );
  }

  Widget _buildAbilityLevelDropdown() {
    return DropdownButtonFormField<AbilityLevel>(
      decoration: InputDecoration(labelText: 'Ability Level'),
      value: _selectedAbilityLevel,
      onChanged: (value) {
        setState(() {
          _selectedAbilityLevel = value;
        });
      },
      items: AbilityLevel.values.map((abilityLevel) {
        return DropdownMenuItem<AbilityLevel>(
          value: abilityLevel,
          child: Text(abilityLevel.toString().split('.').last),
        );
      }).toList(),
      validator: (value) {
        if (value == null) {
          return 'Please select an ability level.';
        }
        return null;
      },
    );
  }

  Widget _buildAdditionalInformationField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Additional Information'),
      onChanged: (value) {
        setState(() {
          _additionalInformation = value;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Trip'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _buildTripDateField(),
              CheckboxListTile(
                title: Text('Multi-day'),
                value: _isMultiDay,
                onChanged: (value) {
                  setState(() {
                    _isMultiDay = value;
                  });
                },
              ),
              _buildCompletionDateField(),
              _buildTripTitleField(),
              _buildSarTimeField(),
              _buildRouteField(),
              _buildDetailsField(),
              _buildActivityTypeDropdown(),
              _buildAbilityLevelDropdown(),
              _buildAdditionalInformationField(),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // if (_formKey.currentState.validate()) {
                  // Form is valid, save or process the data
                  // ...
                  // }
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CreateTripView(),
  ));
}
