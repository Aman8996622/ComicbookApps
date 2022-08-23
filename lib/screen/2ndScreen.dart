import 'package:flutter/material.dart';
import 'package:uidesign/class.dart/choice.dart';
import 'package:uidesign/screen/formscreen.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => ScreenState();
}

class ScreenState extends State<Screen> {
  List<Choice> choices = const <Choice>
  [
    Choice(title: 'Action', Image: "assets/Fire.png"),
    Choice(title: 'Romance', Image: "assets/Heart.png"),
    Choice(title: 'Drama', Image: "assets/Sneezing face.png"),
    Choice(title: 'Horor', Image: "assets/s.png"),
    Choice(title: 'Fantasy', Image: "assets/Unicorn.png"),
    Choice(title: 'Mstery', Image: "assets/Camera.png"),
    Choice(title: 'Magic', Image: "assets/Crystal ball.png"),
    Choice(title: 'Comedy', Image: "assets/Rolling on the floor laughing.png"),
    Choice(title: 'Daily', Image: "assets/Calendar.png"),
    Choice(title: 'Physcology', Image: "assets/Clock.png"),
    Choice(title: 'Adventure', Image: "assets/Airplane.png"),
    Choice(title: 'Thriller', Image: "assets/Cold face.png"),
  ];
  int? a = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column
         (
          children: [
          const Padding(
            padding: EdgeInsets.symmetric
            (
              vertical: 50,
              horizontal: 79,
            ),
            child: Text(
              "Let Us Know !",
              style: TextStyle(fontSize: 32, color: Colors.black),
            ),
          ),
          const SizedBox(
            width: 218,
            height: 36,
            child: Text(
              "Choose your genre to Find Favorite titles ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF9D9D9D),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: choices.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        a = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black, //color of border
                              width: 1, //width of border
                            ),
                            borderRadius: BorderRadius.circular(15),
                            color:
                                a == index ? const Color(0xffA2B2FC) : Colors.white),
                        child: Center(
                          child: ListTile(
                              title:
                                  Image.asset(choices[index].Image.toString()),
                              subtitle: Text(
                                choices[index].title.toString(),
                                style: const TextStyle(
                                    fontSize: 10, color: Colors.black),
                                textAlign: TextAlign.center,
                              )),
                        ),
                      ),
                    ),
                  );
                }
              ),
          ),
          ElevatedButton(
              child: const Text("Continue"),
              onPressed: () => {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const FormScreen()))
                  },
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(280, 43),
                  primary: const Color(0xFFA2B2FC),
                  textStyle: const TextStyle
                  (
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  shape: RoundedRectangleBorder
                  (
                    borderRadius: BorderRadius.circular(25),
                  ),
              ),
            ),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Skip it Now",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
             ),
             
           ],
          ),
        );
  }
}
