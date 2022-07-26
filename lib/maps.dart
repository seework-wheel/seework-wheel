// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// // import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:flutter_search_bar/flutter_search_bar.dart';
//
// class Map extends StatefulWidget {
//   const Map({Key? key}) : super(key: key);
//
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<Map> {
//   late GoogleMapController mapController;
//
//   final LatLng _center = const LatLng(41.017901, 28.847953);
//
//   AppBar buildAppBar(BuildContext context) {
//     return AppBar(
//         title: new Text('Search Bar'),
//         backgroundColor: Color(0xF2F2F2),
//         actions: [searchBar.getSearchAction(context)],);
//   }//appbar생성용 함수?
//
//   void _onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }// controller 선언
//
//   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
//   late SearchBar searchBar;
//
//   void onSubmitted(String value) {
//     setState(() {
//       var context = _scaffoldKey.currentContext;
//
//       if (context == null) {
//         return;
//       }
//
//       ScaffoldMessenger.maybeOf(context)
//           ?.showSnackBar(new SnackBar(content: new Text('You wrote "$value"!')));
//     });
//   }
//
//   _MyAppState() {
//     searchBar = new SearchBar(
//         inBar: false,
//         buildDefaultAppBar: buildAppBar,
//         setState: setState,
//         onSubmitted: onSubmitted,
//         onCleared: () {
//           print("Search bar has been cleared");
//         },
//         onClosed: () {
//           print("Search bar has been closed");
//         });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return new Scaffold(
//       appBar: searchBar.build(context),
//       drawer: Drawer(
//         // Add a ListView to the drawer. This ensures the user can scroll
//         // through the options in the drawer if there isn't enough vertical
//         // space to fit everything.
//         child: ListView(
//           // Important: Remove any padding from the ListView.
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Color(0xF2F2F2),
//               ),
//               child: Text('Drawer Header'),
//             ),
//             ListTile(
//               title: const Text('Item 1'),
//               onTap: () {
//                 // Update the state of the app.
//                 // ...
//               },
//             ),
//             ListTile(
//               title: const Text('Item 2'),
//               onTap: () {
//                 // Update the state of the app.
//                 // ...
//               },
//             ),
//           ],
//         ),
//       ),
//       body: GoogleMap(
//         onMapCreated: _onMapCreated,
//         initialCameraPosition: CameraPosition(
//           target: LatLng(37.77483, -122.41942),//위도, 경도 설정
//           zoom: 11.0,
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈', backgroundColor: Colors.grey),
//           BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: '둘러보기', backgroundColor: Color(0xF2F2F2)),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: '마이페이지', backgroundColor: Color(0xF2F2F2)),
//         ],
//       ),
//     );
//   }
// }
// //
