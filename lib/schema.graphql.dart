class Input$TripInput {
  factory Input$TripInput({
    required String title,
    required String departureDate,
    required String completionDate,
    required String sarTime,
    required String route,
    required String details,
    required Enum$ActivityType activityType,
    required Enum$AbilityLevel abilityLevel,
    required List<String> requiredEquipment,
    required String additionalInformation,
  }) =>
      Input$TripInput._({
        r'title': title,
        r'departureDate': departureDate,
        r'completionDate': completionDate,
        r'sarTime': sarTime,
        r'route': route,
        r'details': details,
        r'activityType': activityType,
        r'abilityLevel': abilityLevel,
        r'requiredEquipment': requiredEquipment,
        r'additionalInformation': additionalInformation,
      });

  Input$TripInput._(this._$data);

  factory Input$TripInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    final l$departureDate = data['departureDate'];
    result$data['departureDate'] = (l$departureDate as String);
    final l$completionDate = data['completionDate'];
    result$data['completionDate'] = (l$completionDate as String);
    final l$sarTime = data['sarTime'];
    result$data['sarTime'] = (l$sarTime as String);
    final l$route = data['route'];
    result$data['route'] = (l$route as String);
    final l$details = data['details'];
    result$data['details'] = (l$details as String);
    final l$activityType = data['activityType'];
    result$data['activityType'] =
        fromJson$Enum$ActivityType((l$activityType as String));
    final l$abilityLevel = data['abilityLevel'];
    result$data['abilityLevel'] =
        fromJson$Enum$AbilityLevel((l$abilityLevel as String));
    final l$requiredEquipment = data['requiredEquipment'];
    result$data['requiredEquipment'] = (l$requiredEquipment as List<dynamic>)
        .map((e) => (e as String))
        .toList();
    final l$additionalInformation = data['additionalInformation'];
    result$data['additionalInformation'] = (l$additionalInformation as String);
    return Input$TripInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get title => (_$data['title'] as String);
  String get departureDate => (_$data['departureDate'] as String);
  String get completionDate => (_$data['completionDate'] as String);
  String get sarTime => (_$data['sarTime'] as String);
  String get route => (_$data['route'] as String);
  String get details => (_$data['details'] as String);
  Enum$ActivityType get activityType =>
      (_$data['activityType'] as Enum$ActivityType);
  Enum$AbilityLevel get abilityLevel =>
      (_$data['abilityLevel'] as Enum$AbilityLevel);
  List<String> get requiredEquipment =>
      (_$data['requiredEquipment'] as List<String>);
  String get additionalInformation =>
      (_$data['additionalInformation'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$title = title;
    result$data['title'] = l$title;
    final l$departureDate = departureDate;
    result$data['departureDate'] = l$departureDate;
    final l$completionDate = completionDate;
    result$data['completionDate'] = l$completionDate;
    final l$sarTime = sarTime;
    result$data['sarTime'] = l$sarTime;
    final l$route = route;
    result$data['route'] = l$route;
    final l$details = details;
    result$data['details'] = l$details;
    final l$activityType = activityType;
    result$data['activityType'] = toJson$Enum$ActivityType(l$activityType);
    final l$abilityLevel = abilityLevel;
    result$data['abilityLevel'] = toJson$Enum$AbilityLevel(l$abilityLevel);
    final l$requiredEquipment = requiredEquipment;
    result$data['requiredEquipment'] =
        l$requiredEquipment.map((e) => e).toList();
    final l$additionalInformation = additionalInformation;
    result$data['additionalInformation'] = l$additionalInformation;
    return result$data;
  }

  CopyWith$Input$TripInput<Input$TripInput> get copyWith =>
      CopyWith$Input$TripInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$TripInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$departureDate = departureDate;
    final lOther$departureDate = other.departureDate;
    if (l$departureDate != lOther$departureDate) {
      return false;
    }
    final l$completionDate = completionDate;
    final lOther$completionDate = other.completionDate;
    if (l$completionDate != lOther$completionDate) {
      return false;
    }
    final l$sarTime = sarTime;
    final lOther$sarTime = other.sarTime;
    if (l$sarTime != lOther$sarTime) {
      return false;
    }
    final l$route = route;
    final lOther$route = other.route;
    if (l$route != lOther$route) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (l$details != lOther$details) {
      return false;
    }
    final l$activityType = activityType;
    final lOther$activityType = other.activityType;
    if (l$activityType != lOther$activityType) {
      return false;
    }
    final l$abilityLevel = abilityLevel;
    final lOther$abilityLevel = other.abilityLevel;
    if (l$abilityLevel != lOther$abilityLevel) {
      return false;
    }
    final l$requiredEquipment = requiredEquipment;
    final lOther$requiredEquipment = other.requiredEquipment;
    if (l$requiredEquipment.length != lOther$requiredEquipment.length) {
      return false;
    }
    for (int i = 0; i < l$requiredEquipment.length; i++) {
      final l$requiredEquipment$entry = l$requiredEquipment[i];
      final lOther$requiredEquipment$entry = lOther$requiredEquipment[i];
      if (l$requiredEquipment$entry != lOther$requiredEquipment$entry) {
        return false;
      }
    }
    final l$additionalInformation = additionalInformation;
    final lOther$additionalInformation = other.additionalInformation;
    if (l$additionalInformation != lOther$additionalInformation) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$departureDate = departureDate;
    final l$completionDate = completionDate;
    final l$sarTime = sarTime;
    final l$route = route;
    final l$details = details;
    final l$activityType = activityType;
    final l$abilityLevel = abilityLevel;
    final l$requiredEquipment = requiredEquipment;
    final l$additionalInformation = additionalInformation;
    return Object.hashAll([
      l$title,
      l$departureDate,
      l$completionDate,
      l$sarTime,
      l$route,
      l$details,
      l$activityType,
      l$abilityLevel,
      Object.hashAll(l$requiredEquipment.map((v) => v)),
      l$additionalInformation,
    ]);
  }
}

abstract class CopyWith$Input$TripInput<TRes> {
  factory CopyWith$Input$TripInput(
    Input$TripInput instance,
    TRes Function(Input$TripInput) then,
  ) = _CopyWithImpl$Input$TripInput;

  factory CopyWith$Input$TripInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TripInput;

  TRes call({
    String? title,
    String? departureDate,
    String? completionDate,
    String? sarTime,
    String? route,
    String? details,
    Enum$ActivityType? activityType,
    Enum$AbilityLevel? abilityLevel,
    List<String>? requiredEquipment,
    String? additionalInformation,
  });
}

class _CopyWithImpl$Input$TripInput<TRes>
    implements CopyWith$Input$TripInput<TRes> {
  _CopyWithImpl$Input$TripInput(
    this._instance,
    this._then,
  );

  final Input$TripInput _instance;

  final TRes Function(Input$TripInput) _then;

  static const _undefined = {};

  TRes call({
    Object? title = _undefined,
    Object? departureDate = _undefined,
    Object? completionDate = _undefined,
    Object? sarTime = _undefined,
    Object? route = _undefined,
    Object? details = _undefined,
    Object? activityType = _undefined,
    Object? abilityLevel = _undefined,
    Object? requiredEquipment = _undefined,
    Object? additionalInformation = _undefined,
  }) =>
      _then(Input$TripInput._({
        ..._instance._$data,
        if (title != _undefined && title != null) 'title': (title as String),
        if (departureDate != _undefined && departureDate != null)
          'departureDate': (departureDate as String),
        if (completionDate != _undefined && completionDate != null)
          'completionDate': (completionDate as String),
        if (sarTime != _undefined && sarTime != null)
          'sarTime': (sarTime as String),
        if (route != _undefined && route != null) 'route': (route as String),
        if (details != _undefined && details != null)
          'details': (details as String),
        if (activityType != _undefined && activityType != null)
          'activityType': (activityType as Enum$ActivityType),
        if (abilityLevel != _undefined && abilityLevel != null)
          'abilityLevel': (abilityLevel as Enum$AbilityLevel),
        if (requiredEquipment != _undefined && requiredEquipment != null)
          'requiredEquipment': (requiredEquipment as List<String>),
        if (additionalInformation != _undefined &&
            additionalInformation != null)
          'additionalInformation': (additionalInformation as String),
      }));
}

class _CopyWithStubImpl$Input$TripInput<TRes>
    implements CopyWith$Input$TripInput<TRes> {
  _CopyWithStubImpl$Input$TripInput(this._res);

  TRes _res;

  call({
    String? title,
    String? departureDate,
    String? completionDate,
    String? sarTime,
    String? route,
    String? details,
    Enum$ActivityType? activityType,
    Enum$AbilityLevel? abilityLevel,
    List<String>? requiredEquipment,
    String? additionalInformation,
  }) =>
      _res;
}

class Input$UpdateMemberInput {
  factory Input$UpdateMemberInput({
    required String firstName,
    required String lastName,
    required String emailAddress,
    required String dateOfBirth,
    required String profileImageUrl,
    required String bio,
    required List<Input$ActivityInput> activities,
  }) =>
      Input$UpdateMemberInput._({
        r'firstName': firstName,
        r'lastName': lastName,
        r'emailAddress': emailAddress,
        r'dateOfBirth': dateOfBirth,
        r'profileImageUrl': profileImageUrl,
        r'bio': bio,
        r'activities': activities,
      });

  Input$UpdateMemberInput._(this._$data);

  factory Input$UpdateMemberInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$firstName = data['firstName'];
    result$data['firstName'] = (l$firstName as String);
    final l$lastName = data['lastName'];
    result$data['lastName'] = (l$lastName as String);
    final l$emailAddress = data['emailAddress'];
    result$data['emailAddress'] = (l$emailAddress as String);
    final l$dateOfBirth = data['dateOfBirth'];
    result$data['dateOfBirth'] = (l$dateOfBirth as String);
    final l$profileImageUrl = data['profileImageUrl'];
    result$data['profileImageUrl'] = (l$profileImageUrl as String);
    final l$bio = data['bio'];
    result$data['bio'] = (l$bio as String);
    final l$activities = data['activities'];
    result$data['activities'] = (l$activities as List<dynamic>)
        .map((e) => Input$ActivityInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Input$UpdateMemberInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get firstName => (_$data['firstName'] as String);
  String get lastName => (_$data['lastName'] as String);
  String get emailAddress => (_$data['emailAddress'] as String);
  String get dateOfBirth => (_$data['dateOfBirth'] as String);
  String get profileImageUrl => (_$data['profileImageUrl'] as String);
  String get bio => (_$data['bio'] as String);
  List<Input$ActivityInput> get activities =>
      (_$data['activities'] as List<Input$ActivityInput>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$firstName = firstName;
    result$data['firstName'] = l$firstName;
    final l$lastName = lastName;
    result$data['lastName'] = l$lastName;
    final l$emailAddress = emailAddress;
    result$data['emailAddress'] = l$emailAddress;
    final l$dateOfBirth = dateOfBirth;
    result$data['dateOfBirth'] = l$dateOfBirth;
    final l$profileImageUrl = profileImageUrl;
    result$data['profileImageUrl'] = l$profileImageUrl;
    final l$bio = bio;
    result$data['bio'] = l$bio;
    final l$activities = activities;
    result$data['activities'] = l$activities.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Input$UpdateMemberInput<Input$UpdateMemberInput> get copyWith =>
      CopyWith$Input$UpdateMemberInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UpdateMemberInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$emailAddress = emailAddress;
    final lOther$emailAddress = other.emailAddress;
    if (l$emailAddress != lOther$emailAddress) {
      return false;
    }
    final l$dateOfBirth = dateOfBirth;
    final lOther$dateOfBirth = other.dateOfBirth;
    if (l$dateOfBirth != lOther$dateOfBirth) {
      return false;
    }
    final l$profileImageUrl = profileImageUrl;
    final lOther$profileImageUrl = other.profileImageUrl;
    if (l$profileImageUrl != lOther$profileImageUrl) {
      return false;
    }
    final l$bio = bio;
    final lOther$bio = other.bio;
    if (l$bio != lOther$bio) {
      return false;
    }
    final l$activities = activities;
    final lOther$activities = other.activities;
    if (l$activities.length != lOther$activities.length) {
      return false;
    }
    for (int i = 0; i < l$activities.length; i++) {
      final l$activities$entry = l$activities[i];
      final lOther$activities$entry = lOther$activities[i];
      if (l$activities$entry != lOther$activities$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$emailAddress = emailAddress;
    final l$dateOfBirth = dateOfBirth;
    final l$profileImageUrl = profileImageUrl;
    final l$bio = bio;
    final l$activities = activities;
    return Object.hashAll([
      l$firstName,
      l$lastName,
      l$emailAddress,
      l$dateOfBirth,
      l$profileImageUrl,
      l$bio,
      Object.hashAll(l$activities.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$UpdateMemberInput<TRes> {
  factory CopyWith$Input$UpdateMemberInput(
    Input$UpdateMemberInput instance,
    TRes Function(Input$UpdateMemberInput) then,
  ) = _CopyWithImpl$Input$UpdateMemberInput;

  factory CopyWith$Input$UpdateMemberInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateMemberInput;

  TRes call({
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? dateOfBirth,
    String? profileImageUrl,
    String? bio,
    List<Input$ActivityInput>? activities,
  });
  TRes activities(
      Iterable<Input$ActivityInput> Function(
              Iterable<CopyWith$Input$ActivityInput<Input$ActivityInput>>)
          _fn);
}

class _CopyWithImpl$Input$UpdateMemberInput<TRes>
    implements CopyWith$Input$UpdateMemberInput<TRes> {
  _CopyWithImpl$Input$UpdateMemberInput(
    this._instance,
    this._then,
  );

  final Input$UpdateMemberInput _instance;

  final TRes Function(Input$UpdateMemberInput) _then;

  static const _undefined = {};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? emailAddress = _undefined,
    Object? dateOfBirth = _undefined,
    Object? profileImageUrl = _undefined,
    Object? bio = _undefined,
    Object? activities = _undefined,
  }) =>
      _then(Input$UpdateMemberInput._({
        ..._instance._$data,
        if (firstName != _undefined && firstName != null)
          'firstName': (firstName as String),
        if (lastName != _undefined && lastName != null)
          'lastName': (lastName as String),
        if (emailAddress != _undefined && emailAddress != null)
          'emailAddress': (emailAddress as String),
        if (dateOfBirth != _undefined && dateOfBirth != null)
          'dateOfBirth': (dateOfBirth as String),
        if (profileImageUrl != _undefined && profileImageUrl != null)
          'profileImageUrl': (profileImageUrl as String),
        if (bio != _undefined && bio != null) 'bio': (bio as String),
        if (activities != _undefined && activities != null)
          'activities': (activities as List<Input$ActivityInput>),
      }));
  TRes activities(
          Iterable<Input$ActivityInput> Function(
                  Iterable<CopyWith$Input$ActivityInput<Input$ActivityInput>>)
              _fn) =>
      call(
          activities:
              _fn(_instance.activities.map((e) => CopyWith$Input$ActivityInput(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Input$UpdateMemberInput<TRes>
    implements CopyWith$Input$UpdateMemberInput<TRes> {
  _CopyWithStubImpl$Input$UpdateMemberInput(this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? dateOfBirth,
    String? profileImageUrl,
    String? bio,
    List<Input$ActivityInput>? activities,
  }) =>
      _res;
  activities(_fn) => _res;
}

class Input$ActivityInput {
  factory Input$ActivityInput({
    required Enum$ActivityType type,
    required Enum$AbilityLevel abilityLevel,
  }) =>
      Input$ActivityInput._({
        r'type': type,
        r'abilityLevel': abilityLevel,
      });

  Input$ActivityInput._(this._$data);

  factory Input$ActivityInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$type = data['type'];
    result$data['type'] = fromJson$Enum$ActivityType((l$type as String));
    final l$abilityLevel = data['abilityLevel'];
    result$data['abilityLevel'] =
        fromJson$Enum$AbilityLevel((l$abilityLevel as String));
    return Input$ActivityInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$ActivityType get type => (_$data['type'] as Enum$ActivityType);
  Enum$AbilityLevel get abilityLevel =>
      (_$data['abilityLevel'] as Enum$AbilityLevel);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$type = type;
    result$data['type'] = toJson$Enum$ActivityType(l$type);
    final l$abilityLevel = abilityLevel;
    result$data['abilityLevel'] = toJson$Enum$AbilityLevel(l$abilityLevel);
    return result$data;
  }

  CopyWith$Input$ActivityInput<Input$ActivityInput> get copyWith =>
      CopyWith$Input$ActivityInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ActivityInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$abilityLevel = abilityLevel;
    final lOther$abilityLevel = other.abilityLevel;
    if (l$abilityLevel != lOther$abilityLevel) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$abilityLevel = abilityLevel;
    return Object.hashAll([
      l$type,
      l$abilityLevel,
    ]);
  }
}

abstract class CopyWith$Input$ActivityInput<TRes> {
  factory CopyWith$Input$ActivityInput(
    Input$ActivityInput instance,
    TRes Function(Input$ActivityInput) then,
  ) = _CopyWithImpl$Input$ActivityInput;

  factory CopyWith$Input$ActivityInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ActivityInput;

  TRes call({
    Enum$ActivityType? type,
    Enum$AbilityLevel? abilityLevel,
  });
}

class _CopyWithImpl$Input$ActivityInput<TRes>
    implements CopyWith$Input$ActivityInput<TRes> {
  _CopyWithImpl$Input$ActivityInput(
    this._instance,
    this._then,
  );

  final Input$ActivityInput _instance;

  final TRes Function(Input$ActivityInput) _then;

  static const _undefined = {};

  TRes call({
    Object? type = _undefined,
    Object? abilityLevel = _undefined,
  }) =>
      _then(Input$ActivityInput._({
        ..._instance._$data,
        if (type != _undefined && type != null)
          'type': (type as Enum$ActivityType),
        if (abilityLevel != _undefined && abilityLevel != null)
          'abilityLevel': (abilityLevel as Enum$AbilityLevel),
      }));
}

class _CopyWithStubImpl$Input$ActivityInput<TRes>
    implements CopyWith$Input$ActivityInput<TRes> {
  _CopyWithStubImpl$Input$ActivityInput(this._res);

  TRes _res;

  call({
    Enum$ActivityType? type,
    Enum$AbilityLevel? abilityLevel,
  }) =>
      _res;
}

class Input$CreateTripInput {
  factory Input$CreateTripInput({required Input$TripInput input}) =>
      Input$CreateTripInput._({
        r'input': input,
      });

  Input$CreateTripInput._(this._$data);

  factory Input$CreateTripInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$TripInput.fromJson((l$input as Map<String, dynamic>));
    return Input$CreateTripInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TripInput get input => (_$data['input'] as Input$TripInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Input$CreateTripInput<Input$CreateTripInput> get copyWith =>
      CopyWith$Input$CreateTripInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateTripInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Input$CreateTripInput<TRes> {
  factory CopyWith$Input$CreateTripInput(
    Input$CreateTripInput instance,
    TRes Function(Input$CreateTripInput) then,
  ) = _CopyWithImpl$Input$CreateTripInput;

  factory CopyWith$Input$CreateTripInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateTripInput;

  TRes call({Input$TripInput? input});
  CopyWith$Input$TripInput<TRes> get input;
}

class _CopyWithImpl$Input$CreateTripInput<TRes>
    implements CopyWith$Input$CreateTripInput<TRes> {
  _CopyWithImpl$Input$CreateTripInput(
    this._instance,
    this._then,
  );

  final Input$CreateTripInput _instance;

  final TRes Function(Input$CreateTripInput) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) => _then(Input$CreateTripInput._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$TripInput),
      }));
  CopyWith$Input$TripInput<TRes> get input {
    final local$input = _instance.input;
    return CopyWith$Input$TripInput(local$input, (e) => call(input: e));
  }
}

class _CopyWithStubImpl$Input$CreateTripInput<TRes>
    implements CopyWith$Input$CreateTripInput<TRes> {
  _CopyWithStubImpl$Input$CreateTripInput(this._res);

  TRes _res;

  call({Input$TripInput? input}) => _res;
  CopyWith$Input$TripInput<TRes> get input =>
      CopyWith$Input$TripInput.stub(_res);
}

class Input$ApproveTripJoinRequestInput {
  factory Input$ApproveTripJoinRequestInput({
    required String memberKey,
    required String tripKey,
  }) =>
      Input$ApproveTripJoinRequestInput._({
        r'memberKey': memberKey,
        r'tripKey': tripKey,
      });

  Input$ApproveTripJoinRequestInput._(this._$data);

  factory Input$ApproveTripJoinRequestInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$memberKey = data['memberKey'];
    result$data['memberKey'] = (l$memberKey as String);
    final l$tripKey = data['tripKey'];
    result$data['tripKey'] = (l$tripKey as String);
    return Input$ApproveTripJoinRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get memberKey => (_$data['memberKey'] as String);
  String get tripKey => (_$data['tripKey'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$memberKey = memberKey;
    result$data['memberKey'] = l$memberKey;
    final l$tripKey = tripKey;
    result$data['tripKey'] = l$tripKey;
    return result$data;
  }

  CopyWith$Input$ApproveTripJoinRequestInput<Input$ApproveTripJoinRequestInput>
      get copyWith => CopyWith$Input$ApproveTripJoinRequestInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ApproveTripJoinRequestInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$memberKey = memberKey;
    final lOther$memberKey = other.memberKey;
    if (l$memberKey != lOther$memberKey) {
      return false;
    }
    final l$tripKey = tripKey;
    final lOther$tripKey = other.tripKey;
    if (l$tripKey != lOther$tripKey) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$memberKey = memberKey;
    final l$tripKey = tripKey;
    return Object.hashAll([
      l$memberKey,
      l$tripKey,
    ]);
  }
}

abstract class CopyWith$Input$ApproveTripJoinRequestInput<TRes> {
  factory CopyWith$Input$ApproveTripJoinRequestInput(
    Input$ApproveTripJoinRequestInput instance,
    TRes Function(Input$ApproveTripJoinRequestInput) then,
  ) = _CopyWithImpl$Input$ApproveTripJoinRequestInput;

  factory CopyWith$Input$ApproveTripJoinRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ApproveTripJoinRequestInput;

  TRes call({
    String? memberKey,
    String? tripKey,
  });
}

class _CopyWithImpl$Input$ApproveTripJoinRequestInput<TRes>
    implements CopyWith$Input$ApproveTripJoinRequestInput<TRes> {
  _CopyWithImpl$Input$ApproveTripJoinRequestInput(
    this._instance,
    this._then,
  );

  final Input$ApproveTripJoinRequestInput _instance;

  final TRes Function(Input$ApproveTripJoinRequestInput) _then;

  static const _undefined = {};

  TRes call({
    Object? memberKey = _undefined,
    Object? tripKey = _undefined,
  }) =>
      _then(Input$ApproveTripJoinRequestInput._({
        ..._instance._$data,
        if (memberKey != _undefined && memberKey != null)
          'memberKey': (memberKey as String),
        if (tripKey != _undefined && tripKey != null)
          'tripKey': (tripKey as String),
      }));
}

class _CopyWithStubImpl$Input$ApproveTripJoinRequestInput<TRes>
    implements CopyWith$Input$ApproveTripJoinRequestInput<TRes> {
  _CopyWithStubImpl$Input$ApproveTripJoinRequestInput(this._res);

  TRes _res;

  call({
    String? memberKey,
    String? tripKey,
  }) =>
      _res;
}

class Input$CreateTripJoinRequestInput {
  factory Input$CreateTripJoinRequestInput({required String tripKey}) =>
      Input$CreateTripJoinRequestInput._({
        r'tripKey': tripKey,
      });

  Input$CreateTripJoinRequestInput._(this._$data);

  factory Input$CreateTripJoinRequestInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$tripKey = data['tripKey'];
    result$data['tripKey'] = (l$tripKey as String);
    return Input$CreateTripJoinRequestInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get tripKey => (_$data['tripKey'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$tripKey = tripKey;
    result$data['tripKey'] = l$tripKey;
    return result$data;
  }

  CopyWith$Input$CreateTripJoinRequestInput<Input$CreateTripJoinRequestInput>
      get copyWith => CopyWith$Input$CreateTripJoinRequestInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CreateTripJoinRequestInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$tripKey = tripKey;
    final lOther$tripKey = other.tripKey;
    if (l$tripKey != lOther$tripKey) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$tripKey = tripKey;
    return Object.hashAll([l$tripKey]);
  }
}

abstract class CopyWith$Input$CreateTripJoinRequestInput<TRes> {
  factory CopyWith$Input$CreateTripJoinRequestInput(
    Input$CreateTripJoinRequestInput instance,
    TRes Function(Input$CreateTripJoinRequestInput) then,
  ) = _CopyWithImpl$Input$CreateTripJoinRequestInput;

  factory CopyWith$Input$CreateTripJoinRequestInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateTripJoinRequestInput;

  TRes call({String? tripKey});
}

class _CopyWithImpl$Input$CreateTripJoinRequestInput<TRes>
    implements CopyWith$Input$CreateTripJoinRequestInput<TRes> {
  _CopyWithImpl$Input$CreateTripJoinRequestInput(
    this._instance,
    this._then,
  );

  final Input$CreateTripJoinRequestInput _instance;

  final TRes Function(Input$CreateTripJoinRequestInput) _then;

  static const _undefined = {};

  TRes call({Object? tripKey = _undefined}) =>
      _then(Input$CreateTripJoinRequestInput._({
        ..._instance._$data,
        if (tripKey != _undefined && tripKey != null)
          'tripKey': (tripKey as String),
      }));
}

class _CopyWithStubImpl$Input$CreateTripJoinRequestInput<TRes>
    implements CopyWith$Input$CreateTripJoinRequestInput<TRes> {
  _CopyWithStubImpl$Input$CreateTripJoinRequestInput(this._res);

  TRes _res;

  call({String? tripKey}) => _res;
}

enum Enum$ApplyPolicy { BEFORE_RESOLVER, AFTER_RESOLVER, $unknown }

String toJson$Enum$ApplyPolicy(Enum$ApplyPolicy e) {
  switch (e) {
    case Enum$ApplyPolicy.BEFORE_RESOLVER:
      return r'BEFORE_RESOLVER';
    case Enum$ApplyPolicy.AFTER_RESOLVER:
      return r'AFTER_RESOLVER';
    case Enum$ApplyPolicy.$unknown:
      return r'$unknown';
  }
}

Enum$ApplyPolicy fromJson$Enum$ApplyPolicy(String value) {
  switch (value) {
    case r'BEFORE_RESOLVER':
      return Enum$ApplyPolicy.BEFORE_RESOLVER;
    case r'AFTER_RESOLVER':
      return Enum$ApplyPolicy.AFTER_RESOLVER;
    default:
      return Enum$ApplyPolicy.$unknown;
  }
}

enum Enum$AbilityLevel {
  DO_NOT_USE,
  NOVICE,
  BEGINNER,
  INTERMEDIATE,
  ADVANCED,
  EXPERT,
  $unknown
}

String toJson$Enum$AbilityLevel(Enum$AbilityLevel e) {
  switch (e) {
    case Enum$AbilityLevel.DO_NOT_USE:
      return r'DO_NOT_USE';
    case Enum$AbilityLevel.NOVICE:
      return r'NOVICE';
    case Enum$AbilityLevel.BEGINNER:
      return r'BEGINNER';
    case Enum$AbilityLevel.INTERMEDIATE:
      return r'INTERMEDIATE';
    case Enum$AbilityLevel.ADVANCED:
      return r'ADVANCED';
    case Enum$AbilityLevel.EXPERT:
      return r'EXPERT';
    case Enum$AbilityLevel.$unknown:
      return r'$unknown';
  }
}

Enum$AbilityLevel fromJson$Enum$AbilityLevel(String value) {
  switch (value) {
    case r'DO_NOT_USE':
      return Enum$AbilityLevel.DO_NOT_USE;
    case r'NOVICE':
      return Enum$AbilityLevel.NOVICE;
    case r'BEGINNER':
      return Enum$AbilityLevel.BEGINNER;
    case r'INTERMEDIATE':
      return Enum$AbilityLevel.INTERMEDIATE;
    case r'ADVANCED':
      return Enum$AbilityLevel.ADVANCED;
    case r'EXPERT':
      return Enum$AbilityLevel.EXPERT;
    default:
      return Enum$AbilityLevel.$unknown;
  }
}

enum Enum$ActivityType {
  DO_NOT_USE,
  HIKING,
  RUNNING,
  MOUNTAIN_BIKING,
  ROAD_BIKING,
  SEA_KAYAKING,
  $unknown
}

String toJson$Enum$ActivityType(Enum$ActivityType e) {
  switch (e) {
    case Enum$ActivityType.DO_NOT_USE:
      return r'DO_NOT_USE';
    case Enum$ActivityType.HIKING:
      return r'HIKING';
    case Enum$ActivityType.RUNNING:
      return r'RUNNING';
    case Enum$ActivityType.MOUNTAIN_BIKING:
      return r'MOUNTAIN_BIKING';
    case Enum$ActivityType.ROAD_BIKING:
      return r'ROAD_BIKING';
    case Enum$ActivityType.SEA_KAYAKING:
      return r'SEA_KAYAKING';
    case Enum$ActivityType.$unknown:
      return r'$unknown';
  }
}

Enum$ActivityType fromJson$Enum$ActivityType(String value) {
  switch (value) {
    case r'DO_NOT_USE':
      return Enum$ActivityType.DO_NOT_USE;
    case r'HIKING':
      return Enum$ActivityType.HIKING;
    case r'RUNNING':
      return Enum$ActivityType.RUNNING;
    case r'MOUNTAIN_BIKING':
      return Enum$ActivityType.MOUNTAIN_BIKING;
    case r'ROAD_BIKING':
      return Enum$ActivityType.ROAD_BIKING;
    case r'SEA_KAYAKING':
      return Enum$ActivityType.SEA_KAYAKING;
    default:
      return Enum$ActivityType.$unknown;
  }
}

enum Enum$TripStatus {
  DO_NOT_USE,
  PENDING,
  IN_PROGRESS,
  OVERDUE,
  COMPLETED,
  $unknown
}

String toJson$Enum$TripStatus(Enum$TripStatus e) {
  switch (e) {
    case Enum$TripStatus.DO_NOT_USE:
      return r'DO_NOT_USE';
    case Enum$TripStatus.PENDING:
      return r'PENDING';
    case Enum$TripStatus.IN_PROGRESS:
      return r'IN_PROGRESS';
    case Enum$TripStatus.OVERDUE:
      return r'OVERDUE';
    case Enum$TripStatus.COMPLETED:
      return r'COMPLETED';
    case Enum$TripStatus.$unknown:
      return r'$unknown';
  }
}

Enum$TripStatus fromJson$Enum$TripStatus(String value) {
  switch (value) {
    case r'DO_NOT_USE':
      return Enum$TripStatus.DO_NOT_USE;
    case r'PENDING':
      return Enum$TripStatus.PENDING;
    case r'IN_PROGRESS':
      return Enum$TripStatus.IN_PROGRESS;
    case r'OVERDUE':
      return Enum$TripStatus.OVERDUE;
    case r'COMPLETED':
      return Enum$TripStatus.COMPLETED;
    default:
      return Enum$TripStatus.$unknown;
  }
}

const possibleTypesMap = {
  'Error': {'TripError'},
  'ApproveTripJoinRequestError': {'TripError'},
  'CreateTripJoinRequestError': {'TripError'},
};
