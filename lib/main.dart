import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:tripleader/views/create_trip_view.dart';

import 'get_trip_previews.graphql.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final HttpLink httpLink = HttpLink("https://localhost:7265/graphql");
    ValueNotifier<GraphQLClient> client =
        ValueNotifier(GraphQLClient(link: httpLink, cache: GraphQLCache()));

    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        title: 'TripLeader',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange)),
        home: const MainPage(title: 'TripLeader'),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;

    switch (_selectedIndex) {
      case 0:
        page = TripFeedPage();
        break;
      case 1:
        page = Placeholder();
        break;
      case 2:
        page = CreateTripView();
        break;
      case 3:
        page = Placeholder();
        break;
      case 4:
        page = Placeholder();
        break;
      default:
        throw UnimplementedError("No page created for index: $_selectedIndex");
    }

    return Scaffold(
      body: Container(child: page),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.deepOrange,
        // TODO - Fix coloring here
        unselectedItemColor: Colors.black45,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'My Trips'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Create Trip'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class TripFeedPage extends StatelessWidget {
  final _getTripPreviewsQuery = '''
  query getTripPreviews {
  tripPreviews {
    key,
    title,
    leaderKey,
    departureDate,
    completionDate,
    route,
    details,
    activityType,
    abilityLevel,
    requiredEquipment,
    additionalInformation
  }
}
  ''';

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        document: gql(_getTripPreviewsQuery),
        pollInterval: const Duration(seconds: 10),
      ),
      builder: (QueryResult result,
          {VoidCallback? refetch, FetchMore? fetchMore}) {
        if (result.hasException) {
          return Text(result.exception.toString());
        }

        if (result.isLoading) {
          return const Text('Loading');
        }

        final previews = Query$getTripPreviews.fromJson(
            result.data!); // TODO - Handle data being null

        var tripPreviews = previews.tripPreviews;

        if (tripPreviews == null) {
          return const Text('No trip previews');
        }

        return ListView.builder(
            itemCount: tripPreviews.length,
            itemBuilder: (context, index) {
              final tripPreview = tripPreviews[index];
              final foo = tripPreviews[index];

              return TripCard(tripPreview: foo);
            });
      },
    );
  }
}

class TripCard extends StatelessWidget {
  const TripCard({
    super.key,
    required this.tripPreview,
  });

  final Query$getTripPreviews$tripPreviews tripPreview;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
            children: [Text(tripPreview.title), Text(tripPreview.route)]));
  }
}

class NavRow extends StatelessWidget {
  const NavRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.deepOrange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(Icons.home),
          Icon(Icons.list),
          Icon(Icons.add),
          Icon(Icons.chat),
          Icon(Icons.person),
        ],
      ),
    );
  }
}

class TripPreview {
  String title;
  String details;

  TripPreview(this.title, this.details);
}
