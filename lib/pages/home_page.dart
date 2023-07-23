import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:presentuxui/pages/custom_bottom.dart';
import 'package:presentuxui/pages/model/catagory_model.dart';
import 'package:presentuxui/pages/model/my_product.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int currentindex = 0;
  final List<dynamic> myProduct = [
    Data(image: "assets/img/Food1.png", text: "Pizza"),
    Data(image: "assets/img/Food2.png", text: "Hamburger"),
    Data(image: "assets/img/Food3.png", text: "Fries"),
    Data(image: "assets/img/Food4.png", text: "Tacos"),
    Data(image: "assets/img/Food5.png", text: "Gyoza"),
    Data(image: "assets/img/Food6.png", text: "Chicken Fries"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          title: Text(
            "MaNEE",
            style: GoogleFonts.bodoniModa(
              color: Colors.black,
              fontSize: 27,
              fontWeight: FontWeight.w900,
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.text_alignleft,
              color: Colors.black,
              size: 27,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.cart_badge_plus,
                  color: Colors.black,
                  size: 33,
                ))
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 130, left: 15, right: 15),
                child: Row(
                  children: [
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 38,
                      width: 335,
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16)),
                          icon: const Icon(Icons.search),
                          border: const OutlineInputBorder(),
                          hintText: 'Search Food etc.',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 210,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  itemCount: CatagoryFood().assets.length,
                  controller:
                      PageController(initialPage: 0, viewportFraction: 0.9),
                  onPageChanged: (value) {
                    currentindex = value;
                    setState(() {});
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(3),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25)),
                      child: Image.asset(
                        CatagoryFood().assets[index],
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
              TabPageSelector(
                color: Colors.grey,
                selectedColor: Colors.black,
                controller: TabController(
                    length: CatagoryFood().assets.length,
                    initialIndex: currentindex,
                    vsync: this),
              ),
              const SizedBox(
                height: 22,
              ),
              SizedBox(
                height: 80,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                            width: 60,
                            child: Image.asset("assets/img/beef.png")),
                        const Text(
                          "Beef",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                            width: 60,
                            child: Image.asset("assets/img/chicken.png")),
                        const Text(
                          "Pig",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                            width: 60,
                            child: Image.asset("assets/img/fish.png")),
                        const Text(
                          "Fish",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                            width: 60,
                            child: Image.asset("assets/img/pig.png")),
                        const Text(
                          "Pig",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 400,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: myProduct.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: AssetImage(
                                  myProduct[index].image,
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(myProduct[index].text)
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 58,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 165, 90, 216),
                    Colors.deepPurpleAccent
                  ]),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomBottom().customNavigationItem1(),
                const SizedBox(
                  width: 35,
                ),
                CustomBottom().customNavigationItem2(),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade400, blurRadius: 8.0)
                ]),
            child: Image.asset(
              "assets/img/logosplash.png",
              scale: 10,
            ),
          ),
        ));
  }
}
