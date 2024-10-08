import 'package:flutter/material.dart';
import 'package:petblu_app/utils/custom_color.dart';
import 'package:petblu_app/widgets/SearchBarTextField.dart';
import 'package:petblu_app/widgets/text_widget.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {

  List<String> animalImages = [
    "assets/images/dog.png",
    "assets/images/carrot.png",
    "assets/images/rabbit.png",
    "assets/images/monkey.png",
    "assets/images/rabbit.png",
  ];

  List<String> animalText = [
    "Dog",
    "Parrot",
    "Crocodile",
    "Monkey",
    "Rabbit",
  ];

  List<String> brandImages = [
    "assets/images/brand1.png",
    "assets/images/brand2.png",
    "assets/images/brand3.png",
    "assets/images/brand4.png",
    "assets/images/brand3.png",
  ];

  List<String> animalsImages2 = [
    "assets/images/rabbit.png",
    "assets/images/monkey.png",
    "assets/images/rabbit.png",
    "assets/images/carrot.png",
    "assets/images/dog.png",
  ];

  List<String> animalText2 = [
    "Rabbit",
    "Monkey",
    "Crocodile",
    "Parrot",
    "Dog",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // appbar
        appBar: AppBar(
          title: Image.asset('assets/images/p1.png',height: 50,),
          centerTitle: true,
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.settings,color: Colors.blue,),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          actions: [
            Icon(Icons.favorite,color: Colors.blue,),
            SizedBox(width: 10,),
            Icon(Icons.shopping_cart,color: Colors.blue,),
            SizedBox(width: 10,),
          ],

        ),

        // drawer list
        drawer: Container(
          width: MediaQuery.of(context).size.width * 0.75, // Adjust the width as needed
          color: Colors.blue, // Set the background color to blue
          child: ListView(
            padding: EdgeInsets.only(top: 40),
            children: <Widget>[
              ListTile(
                title: AppText.normal("Shop",color: Colors.white,fontsize: 18,fontWeight: FontWeight.bold),
                onTap: () {
                  // Handle the tap
                },
              ),
              ListTile(
                title: AppText.normal("Shop by Pet",color: Colors.white,fontsize: 18,),
                onTap: () {
                  // Handle the tap
                },
              ),
              ListTile(
                title: AppText.normal("Shop by Popular Brands",color: Colors.white,fontsize: 18,),
                onTap: () {
                  // Handle the tap
                },
              ),
              ListTile(
                title: AppText.normal("Top Deals",color: Colors.white,fontsize: 18,),
                onTap: () {
                  // Handle the tap
                },
              ),
              ListTile(
                title: AppText.normal("Veterinary Recommended",color: Colors.white,fontsize: 18,),
                onTap: () {
                  // Handle the tap
                },
              ),
              ListTile(
                title: AppText.normal("Order History",color: Colors.white,fontsize: 18,),
                onTap: () {
                  // Handle the tap
                },
              ),
              ListTile(
                title: AppText.normal("Favourites",color: Colors.white,fontsize: 18,),
                onTap: () {
                  // Handle the tap
                },
              ),
              ListTile(
                title: AppText.normal("My Account",color: Colors.white,fontsize: 18,),
                onTap: () {
                  // Handle the tap
                },
              ),

            ],
          ),
        ),

        // body
        body: SingleChildScrollView(
          child: Column(
            children: [

              // search bar
              SearchBarTextField(),
              SizedBox(height: 20,),

              // animal images
              Container(
                height: 170,
                child: ListView.builder(
                    itemCount: animalImages.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,i){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 45,
                              backgroundImage: AssetImage(animalImages[i]),
                            ),
                            SizedBox(height: 10,),
                            AppText.normal(animalText[i],fontsize: 16,fontWeight: FontWeight.bold),
                          ],
                        ),
                      );
                    } ),
              ),

              // image
              Image.asset('assets/images/p2.png',),
              SizedBox(height: 20,),

              // popular brands
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText.normal("Popular Brands",fontsize: 18,fontWeight: FontWeight.bold,color: Colors.blue),
                    Icon(Icons.more_vert,),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              // brand images
              Container(
                height: 170,
                child: ListView.builder(
                    itemCount: brandImages.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,ind){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(brandImages[ind]),
                            ),
                          ],
                        ),
                      );
                    } ),
              ),

              // featured dog products
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText.normal("Featured Dog Products",fontsize: 18,fontWeight: FontWeight.bold,color: Colors.blue),
                          Icon(Icons.more_vert,),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 450,
                      child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,inder){
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/p4.png',),
                                  SizedBox(height: 20,),
                                  Row(
                                    children: [
                                      AppText.normal("Stella & Chewy",fontsize: 16,fontWeight: FontWeight.bold,color: Colors.blue),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  AppText.normal("Stella & chew's red meat meat \n raw blend kibble...",fontsize: 14,maxline: 2),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow,size: 18,),
                                      Icon(Icons.star,color: Colors.yellow,size: 18,),
                                      Icon(Icons.star,color: Colors.yellow,size: 18,),
                                      Icon(Icons.star,color: Colors.yellow,size: 18,),
                                      Icon(Icons.star_border,color: Colors.yellow,size: 18,),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    children: [
                                      AppText.heading("\$ 22.98",fontsize: 20,fontWeight: FontWeight.bold),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: cartbtncolor,
                                          borderRadius: BorderRadius.circular(30),
                                          border: Border.all(color: cartbdrcolor,width: 1),
                                        ),
                                        child: Center(
                                          child: AppText.normal( inder == 0 ? "Added" : "Add to Cart",color: Colors.black,fontsize: 14,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                ],
                              ),
                            );
                          } ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),

              // featured cat products
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText.normal("Featured Cat Products",fontsize: 18,fontWeight: FontWeight.bold,color: Colors.blue),
                          Icon(Icons.more_vert,),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 450,
                      child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,inder){
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/p4.png',),
                                  SizedBox(height: 20,),
                                  Row(
                                    children: [
                                      AppText.normal("Stella & Chewy",fontsize: 16,fontWeight: FontWeight.bold,color: Colors.blue),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  AppText.normal("Stella & chew's red meat meat \n raw blend kibble...",fontsize: 14,maxline: 2),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow,size: 18,),
                                      Icon(Icons.star,color: Colors.yellow,size: 18,),
                                      Icon(Icons.star,color: Colors.yellow,size: 18,),
                                      Icon(Icons.star,color: Colors.yellow,size: 18,),
                                      Icon(Icons.star_border,color: Colors.yellow,size: 18,),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    children: [
                                      AppText.heading("\$ 22.98",fontsize: 20,fontWeight: FontWeight.bold),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: cartbtncolor,
                                          borderRadius: BorderRadius.circular(30),
                                          border: Border.all(color: cartbdrcolor,width: 1),
                                        ),
                                        child: Center(
                                          child: AppText.normal( inder == 0 ? "Added" : "Add to Cart",color: Colors.black,fontsize: 14,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                ],
                              ),
                            );
                          } ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),

              // featured dog products
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText.normal("Featured Dog Products",fontsize: 18,fontWeight: FontWeight.bold,color: Colors.blue),
                          Icon(Icons.more_vert,),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 180,
                      child: ListView.builder(
                          itemCount: animalsImages2.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,inde){
                            return Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: 140,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(animalsImages2[inde]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  AppText.normal(animalText2[inde],fontsize: 16,fontWeight: FontWeight.bold),
                                ],
                              ),
                            );
                          } ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 40,),

              // featured cat products
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/p3.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    AppText.normal("New Products: HempWell Immunity Chews",fontsize: 18,fontWeight: FontWeight.bold,color: Colors.blue,maxline: 2),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: cartbtncolor,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: cartbdrcolor,width: 1),
                          ),
                          child: Center(
                            child: AppText.normal( "Add to Cart",color: Colors.black,fontsize: 14,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
              SizedBox(height: 40,),

              // featured dog products
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText.normal("Featured Cat Products",fontsize: 18,fontWeight: FontWeight.bold,color: Colors.blue),
                          Icon(Icons.more_vert,),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 450,
                      child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,inder){
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/p4.png',),
                                  SizedBox(height: 20,),
                                  Row(
                                    children: [
                                      AppText.normal("Stella & Chewy",fontsize: 16,fontWeight: FontWeight.bold,color: Colors.blue),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  AppText.normal("Stella & chew's red meat meat \n raw blend kibble...",fontsize: 14,maxline: 2),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.yellow,size: 18,),
                                      Icon(Icons.star,color: Colors.yellow,size: 18,),
                                      Icon(Icons.star,color: Colors.yellow,size: 18,),
                                      Icon(Icons.star,color: Colors.yellow,size: 18,),
                                      Icon(Icons.star_border,color: Colors.yellow,size: 18,),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    children: [
                                      AppText.heading("\$ 22.98",fontsize: 20,fontWeight: FontWeight.bold),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: cartbtncolor,
                                          borderRadius: BorderRadius.circular(30),
                                          border: Border.all(color: cartbdrcolor,width: 1),
                                        ),
                                        child: Center(
                                          child: AppText.normal( inder == 0 ? "Added" : "Add to Cart",color: Colors.black,fontsize: 14,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                ],
                              ),
                            );
                          } ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 50,),
            ],
          ),
        )
    );
  }
}