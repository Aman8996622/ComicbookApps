import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:uidesign/screen/book.dart';
import 'package:uidesign/screen/comiclist.dart';
// import 'package:uidesign/screen/2ndScreen.dart';
// import 'package:uidesign/screen/book.dart';

//import 'package:uidesign/screen/grid.dart';
//import 'package:uidesign/screen/grid.dart';
//import 'loginpages.dart';
void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
       ClampingScrollWrapper.builder(context, widget!),
       breakpoints: const [
       ResponsiveBreakpoint.resize(350, name: MOBILE),
      ResponsiveBreakpoint.autoScale(600, name: TABLET),
      ResponsiveBreakpoint.resize(800, name: DESKTOP),
      ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
    ],
   ),
       debugShowCheckedModeBanner: false,
       home: const Comiclist()
   );
  }
}
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: HorizontalListPage(),
//   ));
// }

// class HorizontalListPage extends StatefulWidget {
//   // This widget is the root of your application.
//   @override
//   _HorizontalListPageState createState() => _HorizontalListPageState();
// }

// class _HorizontalListPageState extends State<HorizontalListPage> {
//   List<Map> categories = [
//     {'name': 'All', 'iconPath': 'assets/icons/all_icon.png'},
//     {'name': 'My', 'iconPath': 'assets/icons/fav_icon.png'},
//     {'name': 'Anxious', 'iconPath': 'assets/icons/anxious_icon.png'},
//     {'name': 'Kids', 'iconPath': 'assets/icons/kid_icon.png'},
//     {'name': 'Sleep', 'iconPath': 'assets/icons/moon_icon.png'},
//     {'name': 'All', 'iconPath': 'assets/icons/all_icon.png'},
//     {'name': 'My', 'iconPath': 'assets/icons/fav_icon.png'},
//     {'name': 'Anxious', 'iconPath': 'assets/icons/anxious_icon.png'},
//     {'name': 'Kids', 'iconPath': 'assets/icons/kid_icon.png'},
//     {'name': 'Sleep', 'iconPath': 'assets/icons/moon_icon.png'},
//   ];

//   Color primaryBlue = Color(0xFF586894);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.black,
//         body: SingleChildScrollView(
//           child: Column(children: [
//             SizedBox(
//               height: 250,
//             ),
//             Text(
//               "Categories",
//               style: TextStyle(
//                 fontSize: 40.0,
//                 fontWeight: FontWeight.bold,
//                 fontStyle: FontStyle.italic,
//                 color: Colors.white
//               ),
//                 textAlign: TextAlign.center,
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             Container(
//               height: 150,
//               child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: categories.length,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       child: Column(
//                         children: [
//                           Container(
//                             padding: EdgeInsets.all(10),
//                             margin: EdgeInsets.only(left: 20),
//                             decoration: BoxDecoration(
//                                 color: Colors.deepOrangeAccent,
//                                 borderRadius: BorderRadius.circular(10)),
//                             child: Image.asset(
//                               categories[index]['iconPath'],
//                               height: 100,
//                               width: 100,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             categories[index]['name'],
//                             style: TextStyle(color: Colors.white),
//                             textAlign: TextAlign.center,
//                           )
//                         ],
//                       ),
//                     );
//                   }),
//             ),
//           ]),
//         ));
//   }
// }