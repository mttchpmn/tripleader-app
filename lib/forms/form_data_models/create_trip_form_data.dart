import 'package:flutter/material.dart';
import 'package:tripleader/models/ability_level_model.dart';
import 'package:tripleader/models/activity_model.dart';
import 'package:tripleader/models/route_model.dart';

class CreateTripFormData {
  final String title;
  final TripRoute route;
  final String? details;
  final DateTime tripDate;
  final DateTime? completionDate;
  final TimeOfDay sarTime;
  final Activity activity;
  final AbilityLevel abilityLevel;
  final String? additionalInformation;

  const CreateTripFormData(
      this.title,
      this.route,
      this.details,
      this.tripDate,
      this.completionDate,
      this.sarTime,
      this.activity,
      this.abilityLevel,
      this.additionalInformation);
}
