import 'package:flutter/material.dart';

import '../class.dart/comiclist.dart';
// import 'package:uifirstdesign/ui/styledata/TextStyle.dart';
// import 'package:uifirstdesign/ui/widget/listitle.dart';

// import 'package:uifirstdesign/ui/widget/listitle.dart';

// import '../../imageclass/ComicImage.dart';

class Comiclist extends StatefulWidget {
  const Comiclist({Key? key}) : super(key: key);

  @override
  State<Comiclist> createState() => _ComiclistState();
}

class _ComiclistState extends State<Comiclist> {
  List<ComicImage> comicdata = <ComicImage>[
    ComicImage(
        title: 'Kaguya-sama:\nLove is war',
        image: "assets/kayuga.png",
        subtile: "From MangaPoisk",
        chapter: "NextChapter  123",
        noview: "1.2k"),
    ComicImage(
        title: "Horimiya",
        image: 'assets/horimaya.png',
        subtile: "From MangaLib",
        chapter: "NextChapter  123",
        noview: "1.2k"),
    ComicImage(
        title: "Komi san Cant\nCommunicate",
        image: 'assets/komi.png',
        subtile: "From MangaPoisk",
        chapter: "NextChapter  123",
        noview: "1.2k"),
    ComicImage(
        title: "Boruto",
        image: "assets/borto.png",
        subtile: "Form MangaLib",
        chapter: "NextChapter  123",
        noview: "1.2k"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 58,
            ),
            // const Listt(
            //   leading: "assets/anime.png",
            //   title: "Aman Sharma",
            //   subtile: "Stay trending",
            //   trailing: "assets/button.png",
            // ),
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
            Container(
              width: 320,
              height: 45,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.red,
              ),
              child: const Center(child: Text("empty space")),
            ),
            ListView.builder(
              
              itemCount: comicdata.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Card(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 25.0,
                      vertical: 8.0,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color:Colors.white,
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage(
                              comicdata[index].image.toString(),
                            ),
                            height: 90.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  comicdata[index].title ?? '',
                                  style: const TextStyle(
                                    fontSize: 18
                                  )
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  comicdata[index].subtile ?? '',
                                  style: const TextStyle(
                                    fontSize: 16,
                                  )
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      comicdata[index].chapter.toString(),
                                      style: const TextStyle(
                                         
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 52,
                                    ),
                                    Text(
                                      comicdata[index].noview.toString(),
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 32,
                          ),
                          const CircleAvatar(
                              radius: 15,
                              child: Center(
                                child: Image(
                                  image: AssetImage("assets/cloud-computing 4.png"),
                                  height:20,
                                  width:20 ,
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}