import 'package:day25/list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final info = ElementInfo.generatedElementInfoList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff6efe5),
        body: Container(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hey Marvin",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Stack(
                      children: [
                        Positioned(
                            left: 20,
                            top: 10,
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.redAccent.withOpacity(0.5),
                              ),
                            )),
                        Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 40,
                          color: Colors.orange.withOpacity(0.3),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.deepOrange,
                          ),
                          //foregroundColor: Colors.deepOrange,
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  "Let's Make A Bid!",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    //fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            child: TextField(
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(

                                    //borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none),
                                hintText: 'Search Item',
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          child:
                              Icon(Icons.tune, size: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Category",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("See All")
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  width: double.infinity,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: info.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.amber,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              info[index].logo,
                              height: 100,
                              width: 80,
                            ),
                            Text(
                              info[index].name,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trendind Auction",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(color: Color.fromARGB(255, 37, 29, 0)),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: info.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.7,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) => Container(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    color: Colors.amberAccent.withOpacity(0.5),
                                    child: Image.asset(
                                      info[index].logo,
                                      height: 200,
                                      width: 150,
                                    ),
                                  ),
                                  Positioned(
                                      right: 0,
                                      child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              info[index].isChoice =
                                                  !info[index].isChoice;
                                            });
                                          },
                                          icon: Icon(
                                            Icons.favorite,
                                            color: info[index].isChoice == true
                                                ? Colors.red
                                                : Colors.white,
                                          ))),
                                ],
                              ),
                              Text(
                                info[index].name,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        info[index].name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(info[index].price),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 30),
                                    child: MaterialButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Bid Now',
                                        style: TextStyle(color: Colors.amber),
                                      ),
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
