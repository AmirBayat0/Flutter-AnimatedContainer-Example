import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_main_tet/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDown = false;

  /////////////////////////////////////
  //@CodeWithFlexz on Instagram
  //
  //AmirBayat0 on Github
  //Programming with Flexz on Youtube
  /////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    ///
    return SafeArea(
      child: PageView.builder(
          itemCount: picsmodel.length,
          itemBuilder: (ctx, index) {
            return Scaffold(
              body: AnimatedContainer(
                color: isDown ? Colors.black : Colors.white,
                duration: Duration(milliseconds: 400),
                child: Container(
                  margin: const EdgeInsets.all(5),
                  width: w,
                  height: h,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        GestureDetector(
                          onVerticalDragStart: (_) {
                            setState(() {
                              isDown = !isDown;
                            });
                          },
                          child: AnimatedContainer(
                            margin: EdgeInsets.only(top: isDown ? 0 : 10),
                            duration: const Duration(milliseconds: 400),
                            width: isDown ? w / 1.03 : w / 1.1,
                            height: isDown ? h / 1.06 : h / 1.3,
                            decoration: BoxDecoration(
                              borderRadius:
                                  isDown ? null : BorderRadius.circular(10),
                              boxShadow: isDown
                                  ? null
                                  : [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.3),
                                          offset: Offset(0, 5),
                                          blurRadius: 10,
                                          spreadRadius: 3)
                                    ],
                              image: DecorationImage(
                                image: AssetImage(picsmodel[index].address),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  Positioned(
                                    right: 10,
                                    bottom: 10,
                                    child: isDown
                                        ? Container()
                                        : AnimatedContainer(
                                            duration:
                                                Duration(milliseconds: 400),
                                            width: 30,
                                            height: 30,
                                            child: Center(
                                              child: Spin(
                                                child: Icon(
                                                  Icons.add,
                                                  size: 20,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.black
                                                    .withOpacity(0.2),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                          ),
                                  ),
                                  Positioned(
                                    right: 50,
                                    bottom: 10,
                                    child: isDown
                                        ? Container()
                                        : FadeInRight(
                                            from: 30,
                                            delay: Duration(milliseconds: 400),
                                            child: AnimatedContainer(
                                              duration:
                                                  Duration(milliseconds: 400),
                                              width: 100,
                                              height: 30,
                                              child: Center(
                                                  child: Text(
                                                "Add tags",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13),
                                              )),
                                              decoration: BoxDecoration(
                                                  color: Colors.black
                                                      .withOpacity(0.2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                            ),
                                          ),
                                  )
                                ]),
                          ),
                        ),
                        isDown
                            ? Container()
                            : AnimatedContainer(
                                margin: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20),
                                transformAlignment: Alignment.bottomLeft,
                                duration: Duration(microseconds: 400),
                                width: w / 1.1,
                                height: h / 11,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          picsmodel[index].title,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text: picsmodel[index].size,
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text:
                                                      "    ${picsmodel[index].extent}",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                  ),
                                                )
                                              ]),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          picsmodel[index].imgAdress,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_sharp,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
