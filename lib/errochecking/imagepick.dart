// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'dart:io';
// import 'package:image_picker/image_picker.dart';

// class image extends StatefulWidget {
//   const image({Key? key}) : super(key: key);

//   @override
//   State<image> createState() => _imageState();
// }

// class _imageState extends State<image> {
//   File? _image;
//   // Future pickImage() async {
//   //   try {
//   //     final image = await ImagePicker().pickImage(source: ImageSource.gallery);
//   //     if (image == null) return;
//   //     final ImageTempery = XFile(image.path);
//   //     setState(() {
//   //       this.image = ImageTempery;
//   //     });
//   //   } on PlatformException catch (e) {
//   //     print("failed to pick image $e");
//   //   }
//   // }
//   Future getImageformcamera() async{
//     var image=await ImagePicker().pickImage(source: ImageSource.gallery);
    
//   }
//       @override
//   Widget build(BuildContext context) {
   

//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: Center(
//           child: Stack(
//             children: [
//                CircleAvatar(
//                 radius: 50,
//                 backgroundColor: Color(0XFF9D9D9D),
//                 backgroundImage: , 
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 70, left: 70),
//                 child: InkWell(
//                   onTap: () {
//                      pickImage();
//                   },
//                   child: const CircleAvatar(
//                     radius: 20,
//                     child: Icon(Icons.add),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ));
//   }
// }
// // import 'dart:ffi';
// // import 'dart:io';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:image_picker/image_picker.dart';
// // void main() => runApp(MyApp());
// // class MyApp extends StatelessWidget {
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Demo',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: MyHomePage(),
// //     );
// //   }
// // }
// // class MyHomePage extends StatefulWidget {
// //   @override
// //   _MyHomePageState createState() => _MyHomePageState();
// // }
// // class _MyHomePageState extends State<MyHomePage> {
// //   File _image;
// //   Future getImagefromcamera() async {
// //     var image = await ImagePicker.pickImage(source: ImageSource.camera);
// //     setState(() {
// //       _image = image;
// //     });
// //   }
// //   Future getImagefromGallery() async {
// //     var image = await ImagePicker.pickImage(source: ImageSource.gallery);
// //     setState(() {
// //       _image = image;
// //     });
// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Flutter Image Picker Example"),
// //       ),
// //       body: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: <Widget>[
// //           Center(
// //             child: Text(
// //               "Image Picker Example in Flutter",
// //               style: TextStyle(fontSize: 20),
// //             ),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.all(16.0),
// //             child: Container(
// //               width: MediaQuery.of(context).size.width,
// //               height: 200.0,
// //               child: Center(
// //                 child: _image == null
// //                     ? Text("No Image is picked")
// //                     : Image.file(_image),
// //               ),
// //             ),
// //           ),
// //           Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //             children: <Widget>[
// //               FloatingActionButton(
// //                 onPressed: getImagefromcamera,
// //                 tooltip: "pickImage",
// //                 child: Icon(Icons.add_a_photo),
// //               ),
// //               FloatingActionButton(
// //                 onPressed: getImagefromGallery,
// //                 tooltip: "Pick Image",
// //                 child: Icon(Icons.camera_alt),
// //               )
// //             ],
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }