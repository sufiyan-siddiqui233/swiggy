import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/bottomnav.dart';
import 'package:flutter_application_1/pages/details.dart';
import 'package:flutter_application_1/pages/icecream.dart';
import 'package:flutter_application_1/widget/widget_support.dart';
import 'package:flutter_application_1/service/shared_pref.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, salad = false, burger = true;

  String? name;
  getthesharedpref() async {
    name = await SharedPreferenceHelper().getUserName();

    setState(() {});
  }

  onthisload() async {
    await getthesharedpref();
    setState(() {});
  }

  @override
  void initState() {
    onthisload();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            margin: EdgeInsets.only(top: 20.0, left: 20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(name!, style: AppWidget.boldTextFeildStyle()),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(color: Colors.black),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Text("Welcome to Swiggy",
                  style: AppWidget.HeadlineTextFeildStyle()),
              Text(
                "Embrace the taste",
                style: AppWidget.LightTextFeildStyle(),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: 'Search here...',
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              showItem(),
              SizedBox(height: 30.0),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Details(
                                        detail: 'detail',
                                        name: 'name',
                                        image:
                                            'https://images.unsplash.com/photo-1551782450-17144efb9c50?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                        price: '40',
                                      )));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Column(children: [
                                  Image.asset(
                                    "images/burger2.jpg",
                                    height: 160,
                                    width: 160,
                                    fit: BoxFit.cover,
                                  ),
                                  Text("Hot Crispy Burger",
                                      style: AppWidget.boldTextFeildStyle()),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text("Healthy and Fresh",
                                      style: AppWidget.LightTextFeildStyle()),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text("\$30",
                                      style: AppWidget.boldTextFeildStyle()),
                                ]),
                              )),
                        ),
                      ),
                      SizedBox(width: 5.0),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Details(
                                        detail: 'detail',
                                        name: 'name',
                                        image:
                                            'https://images.unsplash.com/photo-1551782450-17144efb9c50?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                        price: '40',
                                      )));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Column(children: [
                                  Image.asset(
                                    "images/ice-cream2.jpg",
                                    height: 160,
                                    width: 160,
                                    fit: BoxFit.cover,
                                  ),
                                  Text("Ice cream",
                                      style: AppWidget.boldTextFeildStyle()),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text("cold and tasty",
                                      style: AppWidget.LightTextFeildStyle()),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text("\$10",
                                      style: AppWidget.boldTextFeildStyle()),
                                ]),
                              )),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Details(
                                        detail: 'detail',
                                        name: 'name',
                                        image:
                                            'https://images.unsplash.com/photo-1551782450-17144efb9c50?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                        price: '40',
                                      )));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Column(children: [
                                  Image.asset(
                                    "images/salad2.png",
                                    height: 160,
                                    width: 160,
                                    fit: BoxFit.cover,
                                  ),
                                  Text("Veggie Taco Hash",
                                      style: AppWidget.boldTextFeildStyle()),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text("Healthy and Fresh",
                                      style: AppWidget.LightTextFeildStyle()),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text("\$30",
                                      style: AppWidget.boldTextFeildStyle()),
                                ]),
                              )),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  margin: EdgeInsets.only(right: 5.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Row(children: [
                      Image.asset("images/salad3.png",
                          height: 160, width: 90, fit: BoxFit.cover),
                      SizedBox(width: 7.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "Mediterranean chickpea Salad",
                                style: AppWidget.boldTextFeildStyle(),
                              )),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "Honey goot cheese",
                                style: AppWidget.LightTextFeildStyle(),
                              )),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "\$26",
                                style: AppWidget.LightTextFeildStyle(),
                              ))
                        ],
                      )
                    ]),
                  )),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  margin: EdgeInsets.only(right: 5.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Row(children: [
                      Image.asset("images/burger1.jpg",
                          height: 160, width: 90, fit: BoxFit.cover),
                      SizedBox(width: 7.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "Hot chilly burger",
                                style: AppWidget.boldTextFeildStyle(),
                              )),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "flooded with extra cheese",
                                style: AppWidget.LightTextFeildStyle(),
                              )),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "\$26",
                                style: AppWidget.LightTextFeildStyle(),
                              ))
                        ],
                      )
                    ]),
                  )),
              SizedBox(
                height: 10.0,
              ),
              Container(
                  margin: EdgeInsets.only(right: 5.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Row(children: [
                      Image.asset("images/burger2.jpg",
                          height: 160, width: 90, fit: BoxFit.cover),
                      SizedBox(width: 7.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "Crispy chicken Burger",
                                style: AppWidget.boldTextFeildStyle(),
                              )),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "Honey goot cheese",
                                style: AppWidget.LightTextFeildStyle(),
                              )),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                "\$26",
                                style: AppWidget.LightTextFeildStyle(),
                              ))
                        ],
                      )
                    ]),
                  )),
            ])),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            icecream = false;
            pizza = false;
            salad = false;
            burger = true;
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
            setState(() {});
          },
          child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  decoration: BoxDecoration(
                      color: burger ? Colors.black : Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(8),
                  child: Image.asset("images/burger.png",
                      height: 50,
                      width: 40,
                      fit: BoxFit.cover,
                      color: burger ? Colors.white : Colors.black))),
        ),
        GestureDetector(
            onTap: () {
              icecream = true;
              pizza = false;
              salad = false;
              burger = false;
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Icecream()));
              setState(() {});
            },
            child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                    decoration: BoxDecoration(
                        color: icecream ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(8),
                    child: Image.asset("images/ice-cream.png",
                        height: 50,
                        width: 40,
                        fit: BoxFit.cover,
                        color: icecream ? Colors.white : Colors.black)))),
        GestureDetector(
            onTap: () {
              icecream = false;
              pizza = true;
              salad = false;
              burger = false;

              setState(() {});
            },
            child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                    decoration: BoxDecoration(
                        color: pizza ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(8),
                    child: Image.asset("images/pizza.png",
                        height: 50,
                        width: 40,
                        fit: BoxFit.cover,
                        color: pizza ? Colors.white : Colors.black)))),
        GestureDetector(
            onTap: () {
              icecream = false;
              pizza = false;
              salad = true;
              burger = false;
              setState(() {});
            },
            child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                    decoration: BoxDecoration(
                        color: salad ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(8),
                    child: Image.asset("images/salad.png",
                        height: 50,
                        width: 40,
                        fit: BoxFit.cover,
                        color: salad ? Colors.white : Colors.black)))),
      ],
    );
  }
}
