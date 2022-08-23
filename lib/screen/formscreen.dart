import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => FormScreenState();
}

class FormScreenState extends State<FormScreen> {
  File? _image;
  Future getGallery() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 73,
            ),
            Center(
              child: Stack(
                children: [
                   CircleAvatar(
                      radius: 50,
                      backgroundColor: Color(0XFF9D9D9D),
                      backgroundImage: _image == null?const AssetImage("assets/Airplane.png"):AssetImage(Image.file(_image!).toString())
                          ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 70),
                    child: InkWell(
                      onTap: () {
                        getGallery();
                      },
                      child: const CircleAvatar(
                        radius: 20,
                        child: Icon(Icons.add),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 67,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(39),
                child: Column(children: [
                  const TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "enter your name",
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "enter your name",
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "enter your name",
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "enter your name",
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "enter your name",
                    ),
                  ),
                  const SizedBox(
                    height: 133,
                  ),
                  ElevatedButton(
                      child: Text("Continue"),
                      onPressed: () => {
                                  
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(280, 43),
                          primary: Color(0Xff9D9D9D),
                          textStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                        ),
                     ),
                   ),
                 ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Widget bottomSheet() {
//   return Container(
//     height: 100,
//     width: 100,
//     margin: const EdgeInsets.symmetric(
//       horizontal: 20,
//       vertical: 20,
//     ),
//     child: Column(
//       children: [
//         const Text(
//           "Choose your Profile Photo",
//           style: TextStyle(
//             fontSize: 28.0,
//           ),
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         Row(
//           children: [
//             FloatingActionButton.extended(
//                 onPressed: () {},
//                 label: const Text("Camera"),
//                 icon: const Icon(Icons.camera)),
//             FloatingActionButton.extended(
//                 onPressed: () {},
//                 label: const Text("Gallery"),
//                 icon: const Icon(Icons.browse_gallery))
//           ],
//         )
//       ],
//     ),
//   );
// }
  

  // showBottomSheet(
  //                       context: context,
  //                       builder: (context) {
  //                         return Container(
  //                           height: 100,
  //                           width: MediaQuery.of(context).size.width,
  //                           margin: const EdgeInsets.symmetric(
  //                             horizontal: 20,
  //                             vertical: 20,
  //                           ),
  //                           child: Column(
  //                             children: [
  //                               const Text(
  //                                 "Choose your Profile Photo",
  //                                 style: TextStyle(
  //                                   fontSize: 28.0,
  //                                 ),
  //                               ),
  //                               const SizedBox(
  //                                 height: 20,
  //                               ),
  //                               Row(
  //                                 children: [
  //                                   FloatingActionButton.extended(
  //                                       onPressed: () {},
  //                                       label: const Text("Camera"),
  //                                       icon: const Icon(Icons.camera)),
  //                                   FloatingActionButton.extended(
  //                                       onPressed: () {},
  //                                       label: const Text("Gallery"),
  //                                       icon:const  Icon(Icons.browse_gallery))
  //                                 ],
  //                               )
  //                             ],
  //                           ),
  //                         );
  //                        }