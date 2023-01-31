import 'package:gql/ast.dart';
import 'schema.graphql.dart';

class Query$getTripPreviews {
  Query$getTripPreviews({
    required this.tripPreviews,
    required this.$__typename,
  });

  factory Query$getTripPreviews.fromJson(Map<String, dynamic> json) {
    final l$tripPreviews = json['tripPreviews'];
    final l$$__typename = json['__typename'];
    return Query$getTripPreviews(
      tripPreviews: (l$tripPreviews as List<dynamic>)
          .map((e) => Query$getTripPreviews$tripPreviews.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$getTripPreviews$tripPreviews> tripPreviews;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$tripPreviews = tripPreviews;
    _resultData['tripPreviews'] =
        l$tripPreviews.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$tripPreviews = tripPreviews;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$tripPreviews.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getTripPreviews) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$tripPreviews = tripPreviews;
    final lOther$tripPreviews = other.tripPreviews;
    if (l$tripPreviews.length != lOther$tripPreviews.length) {
      return false;
    }
    for (int i = 0; i < l$tripPreviews.length; i++) {
      final l$tripPreviews$entry = l$tripPreviews[i];
      final lOther$tripPreviews$entry = lOther$tripPreviews[i];
      if (l$tripPreviews$entry != lOther$tripPreviews$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getTripPreviews on Query$getTripPreviews {
  CopyWith$Query$getTripPreviews<Query$getTripPreviews> get copyWith =>
      CopyWith$Query$getTripPreviews(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$getTripPreviews<TRes> {
  factory CopyWith$Query$getTripPreviews(
    Query$getTripPreviews instance,
    TRes Function(Query$getTripPreviews) then,
  ) = _CopyWithImpl$Query$getTripPreviews;

  factory CopyWith$Query$getTripPreviews.stub(TRes res) =
      _CopyWithStubImpl$Query$getTripPreviews;

  TRes call({
    List<Query$getTripPreviews$tripPreviews>? tripPreviews,
    String? $__typename,
  });
  TRes tripPreviews(
      Iterable<Query$getTripPreviews$tripPreviews> Function(
              Iterable<
                  CopyWith$Query$getTripPreviews$tripPreviews<
                      Query$getTripPreviews$tripPreviews>>)
          _fn);
}

class _CopyWithImpl$Query$getTripPreviews<TRes>
    implements CopyWith$Query$getTripPreviews<TRes> {
  _CopyWithImpl$Query$getTripPreviews(
    this._instance,
    this._then,
  );

  final Query$getTripPreviews _instance;

  final TRes Function(Query$getTripPreviews) _then;

  static const _undefined = {};

  TRes call({
    Object? tripPreviews = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getTripPreviews(
        tripPreviews: tripPreviews == _undefined || tripPreviews == null
            ? _instance.tripPreviews
            : (tripPreviews as List<Query$getTripPreviews$tripPreviews>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes tripPreviews(
          Iterable<Query$getTripPreviews$tripPreviews> Function(
                  Iterable<
                      CopyWith$Query$getTripPreviews$tripPreviews<
                          Query$getTripPreviews$tripPreviews>>)
              _fn) =>
      call(
          tripPreviews: _fn(_instance.tripPreviews
              .map((e) => CopyWith$Query$getTripPreviews$tripPreviews(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$getTripPreviews<TRes>
    implements CopyWith$Query$getTripPreviews<TRes> {
  _CopyWithStubImpl$Query$getTripPreviews(this._res);

  TRes _res;

  call({
    List<Query$getTripPreviews$tripPreviews>? tripPreviews,
    String? $__typename,
  }) =>
      _res;
  tripPreviews(_fn) => _res;
}

const documentNodeQuerygetTripPreviews = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'getTripPreviews'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'tripPreviews'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'key'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'leaderKey'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'departureDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'completionDate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'route'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'details'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'activityType'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'abilityLevel'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'requiredEquipment'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'additionalInformation'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$getTripPreviews$tripPreviews {
  Query$getTripPreviews$tripPreviews({
    required this.key,
    required this.title,
    required this.leaderKey,
    required this.departureDate,
    required this.completionDate,
    required this.route,
    required this.details,
    required this.activityType,
    required this.abilityLevel,
    required this.requiredEquipment,
    required this.additionalInformation,
    required this.$__typename,
  });

  factory Query$getTripPreviews$tripPreviews.fromJson(
      Map<String, dynamic> json) {
    final l$key = json['key'];
    final l$title = json['title'];
    final l$leaderKey = json['leaderKey'];
    final l$departureDate = json['departureDate'];
    final l$completionDate = json['completionDate'];
    final l$route = json['route'];
    final l$details = json['details'];
    final l$activityType = json['activityType'];
    final l$abilityLevel = json['abilityLevel'];
    final l$requiredEquipment = json['requiredEquipment'];
    final l$additionalInformation = json['additionalInformation'];
    final l$$__typename = json['__typename'];
    return Query$getTripPreviews$tripPreviews(
      key: (l$key as String),
      title: (l$title as String),
      leaderKey: (l$leaderKey as String),
      departureDate: (l$departureDate as String),
      completionDate: (l$completionDate as String),
      route: (l$route as String),
      details: (l$details as String),
      activityType: fromJson$Enum$ActivityType((l$activityType as String)),
      abilityLevel: fromJson$Enum$AbilityLevel((l$abilityLevel as String)),
      requiredEquipment: (l$requiredEquipment as List<dynamic>)
          .map((e) => (e as String))
          .toList(),
      additionalInformation: (l$additionalInformation as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String key;

  final String title;

  final String leaderKey;

  final String departureDate;

  final String completionDate;

  final String route;

  final String details;

  final Enum$ActivityType activityType;

  final Enum$AbilityLevel abilityLevel;

  final List<String> requiredEquipment;

  final String additionalInformation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$key = key;
    _resultData['key'] = l$key;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$leaderKey = leaderKey;
    _resultData['leaderKey'] = l$leaderKey;
    final l$departureDate = departureDate;
    _resultData['departureDate'] = l$departureDate;
    final l$completionDate = completionDate;
    _resultData['completionDate'] = l$completionDate;
    final l$route = route;
    _resultData['route'] = l$route;
    final l$details = details;
    _resultData['details'] = l$details;
    final l$activityType = activityType;
    _resultData['activityType'] = toJson$Enum$ActivityType(l$activityType);
    final l$abilityLevel = abilityLevel;
    _resultData['abilityLevel'] = toJson$Enum$AbilityLevel(l$abilityLevel);
    final l$requiredEquipment = requiredEquipment;
    _resultData['requiredEquipment'] =
        l$requiredEquipment.map((e) => e).toList();
    final l$additionalInformation = additionalInformation;
    _resultData['additionalInformation'] = l$additionalInformation;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$key = key;
    final l$title = title;
    final l$leaderKey = leaderKey;
    final l$departureDate = departureDate;
    final l$completionDate = completionDate;
    final l$route = route;
    final l$details = details;
    final l$activityType = activityType;
    final l$abilityLevel = abilityLevel;
    final l$requiredEquipment = requiredEquipment;
    final l$additionalInformation = additionalInformation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$key,
      l$title,
      l$leaderKey,
      l$departureDate,
      l$completionDate,
      l$route,
      l$details,
      l$activityType,
      l$abilityLevel,
      Object.hashAll(l$requiredEquipment.map((v) => v)),
      l$additionalInformation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$getTripPreviews$tripPreviews) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$leaderKey = leaderKey;
    final lOther$leaderKey = other.leaderKey;
    if (l$leaderKey != lOther$leaderKey) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getTripPreviews$tripPreviews
    on Query$getTripPreviews$tripPreviews {
  CopyWith$Query$getTripPreviews$tripPreviews<
          Query$getTripPreviews$tripPreviews>
      get copyWith => CopyWith$Query$getTripPreviews$tripPreviews(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$getTripPreviews$tripPreviews<TRes> {
  factory CopyWith$Query$getTripPreviews$tripPreviews(
    Query$getTripPreviews$tripPreviews instance,
    TRes Function(Query$getTripPreviews$tripPreviews) then,
  ) = _CopyWithImpl$Query$getTripPreviews$tripPreviews;

  factory CopyWith$Query$getTripPreviews$tripPreviews.stub(TRes res) =
      _CopyWithStubImpl$Query$getTripPreviews$tripPreviews;

  TRes call({
    String? key,
    String? title,
    String? leaderKey,
    String? departureDate,
    String? completionDate,
    String? route,
    String? details,
    Enum$ActivityType? activityType,
    Enum$AbilityLevel? abilityLevel,
    List<String>? requiredEquipment,
    String? additionalInformation,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$getTripPreviews$tripPreviews<TRes>
    implements CopyWith$Query$getTripPreviews$tripPreviews<TRes> {
  _CopyWithImpl$Query$getTripPreviews$tripPreviews(
    this._instance,
    this._then,
  );

  final Query$getTripPreviews$tripPreviews _instance;

  final TRes Function(Query$getTripPreviews$tripPreviews) _then;

  static const _undefined = {};

  TRes call({
    Object? key = _undefined,
    Object? title = _undefined,
    Object? leaderKey = _undefined,
    Object? departureDate = _undefined,
    Object? completionDate = _undefined,
    Object? route = _undefined,
    Object? details = _undefined,
    Object? activityType = _undefined,
    Object? abilityLevel = _undefined,
    Object? requiredEquipment = _undefined,
    Object? additionalInformation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$getTripPreviews$tripPreviews(
        key: key == _undefined || key == null ? _instance.key : (key as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        leaderKey: leaderKey == _undefined || leaderKey == null
            ? _instance.leaderKey
            : (leaderKey as String),
        departureDate: departureDate == _undefined || departureDate == null
            ? _instance.departureDate
            : (departureDate as String),
        completionDate: completionDate == _undefined || completionDate == null
            ? _instance.completionDate
            : (completionDate as String),
        route: route == _undefined || route == null
            ? _instance.route
            : (route as String),
        details: details == _undefined || details == null
            ? _instance.details
            : (details as String),
        activityType: activityType == _undefined || activityType == null
            ? _instance.activityType
            : (activityType as Enum$ActivityType),
        abilityLevel: abilityLevel == _undefined || abilityLevel == null
            ? _instance.abilityLevel
            : (abilityLevel as Enum$AbilityLevel),
        requiredEquipment:
            requiredEquipment == _undefined || requiredEquipment == null
                ? _instance.requiredEquipment
                : (requiredEquipment as List<String>),
        additionalInformation:
            additionalInformation == _undefined || additionalInformation == null
                ? _instance.additionalInformation
                : (additionalInformation as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$getTripPreviews$tripPreviews<TRes>
    implements CopyWith$Query$getTripPreviews$tripPreviews<TRes> {
  _CopyWithStubImpl$Query$getTripPreviews$tripPreviews(this._res);

  TRes _res;

  call({
    String? key,
    String? title,
    String? leaderKey,
    String? departureDate,
    String? completionDate,
    String? route,
    String? details,
    Enum$ActivityType? activityType,
    Enum$AbilityLevel? abilityLevel,
    List<String>? requiredEquipment,
    String? additionalInformation,
    String? $__typename,
  }) =>
      _res;
}
