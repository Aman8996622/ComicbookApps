import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Book extends StatefulWidget {
  const Book({Key? key}) : super(key: key);

  @override
  State<Book> createState() => BookState();
}

class BookState extends State<Book> {
  List<String> image = [
    "assets/anime.png",
    "assets/rezero.png",
    "assets/rezero.png",
    "assets/anime.png",
    "assets/rezero.png",
    "assets/anime.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 54,
            ),
            ListTile(
              leading: const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/Rectangle 10.png"),
              ),
              title: 
              const Text(
                "Stay trending !",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              subtitle: const Text(
                "Aman Sharma",
                style: TextStyle(fontSize: 16),
              ),
              trailing: InkWell(
                child: Image.asset("assets/Group 26.png"),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container
            (
               height: 45,
                width: 320,
                decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                Radius.circular(25)
                ),
               color: Colors.amberAccent,
              ),
           ),
           ListTile(
               leading: Text("Trending Manga",
                style: GoogleFonts.ubuntu(
                    fontSize: 20,
               ),
               ),
               trailing: const Icon(Icons.more_horiz),        ),
           Padding(
             padding: const EdgeInsets.only(
              left: 33
             ),
             child: SizedBox(
                 height:250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: image.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        
        
                      },
                      child:SizedBox(
                       child: Image.asset(image[index].toString(),
                          height: 200.0,
                        ),
                      ),
                      
                    );
        
                  },
                ),
              ),
        
           ),
           const SizedBox(
            height: 25,
           ),
           Expanded(
             child: Stack(
              children: [
                Container(
                  height:352,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                     color: Color(0xFFA2B2FC)
                  ),  
                ),
                Container(
                  height: 174,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius:BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                     gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.8,1),
                      colors: [
                        Color(0xFFA2B2FC),
                        Color(0xFFFFF1BE)
                    
                      ]
                      )

                  ),
                   
                )
              ],
             ),
           )
           
          ],
        ),
      );
  }
}
