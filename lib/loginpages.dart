import 'package:flutter/material.dart';
import 'package:uidesign/screen/2ndScreen.dart';

class myhome extends StatefulWidget {
  const myhome({Key? key}) : super(key: key);

  @override
  State<myhome> createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          reverse: true,
          child: Column(children: [
          SizedBox(
              child: Text(
                "Welcome!",
                style: TextStyle(
                  fontSize: 36,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              child: Text(
                "sign in to start",
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
                width: 280,
                height: 43,
                child: FloatingActionButton.extended(
                  icon: Image.network(
                    "https://www.bing.com/th?id=OIP.h7swg-Li8WPYAXWjQ8wbAAHaHa&w=100&h=104&c=7&o=6&dpr=1.36&pid=13.1",
                    width: 28,
                    height: 29,
                  ),
                  label: const Text("Continue with Google",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      )),
                  onPressed: () {},
                  backgroundColor: Colors.white,
                )),
            const SizedBox(
              height: 53,
            ),
            SizedBox(
                width: 280,
                height: 43,
                child: FloatingActionButton.extended(
                  icon: Image.network(
                    "https://www.vbout.com/wp-content/uploads/2020/06/iconmonstr-infinity-4-240.png",
                    width: 28,
                    height: 29,
                  ),
                  label: const Text("Continue with Meta",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      )),
                  onPressed: () {},
                  backgroundColor: Colors.blue,
                )),
            const SizedBox(
              height: 20,
            ),
            //this the row
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                child: Text(
                  "Haven't account ?",
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Sign in",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ] //children
                ),
            const SizedBox(
              height: 60.0,
            ),
            Container(
              width: double.infinity,
              height: 400,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0)),
                  color: Color(0xFFA2B2FC)),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 47,
                  right: 48,
                  top: 82,
                ),
                child: Column(children: [
                  const TextField(
                      decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: "txx",
                  )),
                  const SizedBox(
                    height: 63,
                  ),
                  const TextField(
                      decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: "txx",
                  )),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 150,
                      top: 10,
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "forget password ?",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        )),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 400,
                    height: 45,
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Screen(),
                        ));
                      },
                      label: const Text(
                        "Continue",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      backgroundColor: Colors.black,
                    ),
                  )
                ]
              ),
            ),
          )
        ]
       ),
      )
    );
  }
}
