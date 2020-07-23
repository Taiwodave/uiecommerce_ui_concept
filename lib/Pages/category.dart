import 'package:flutter/material.dart';
import 'package:tutorials/Animation/animation.dart';

class CategoryPage extends StatefulWidget {

  final String title;
  final String image;
  final String tag;

  const CategoryPage({Key key, this.title, this.image, this.tag}) : super(key: key);
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: widget.tag,
              child: Material(
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.image),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withOpacity(.8),
                            Colors.black.withOpacity(.1)
                          ],
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 40,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                                onPressed: (){
                                  Navigator.pop(context);
                                },
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  PageAnimate(
                                    1.2,
                                    IconButton(
                                      icon: Icon(
                                        Icons.search,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  PageAnimate(
                                    1.3,
                                    IconButton(
                                      icon: Icon(
                                        Icons.favorite,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  PageAnimate(
                                    1.4,
                                    IconButton(
                                      icon: Icon(
                                        Icons.shopping_cart,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 40,),
                          PageAnimate(1.5, Text(widget.title, style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold, fontSize: 40),)),
                        ],
                      )
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("New Product", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18)),
                      Row(
                        children: [
                          Text("View More", style: TextStyle(color: Colors.grey)),
                          Icon(Icons.arrow_forward_ios, size: 12, color: Colors.grey),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  makeProduct(image: "assets/images/beauty-1.jpg", title: "Beauty", price: "100\$"),
                  makeProduct(image: "assets/images/clothes-1.jpg", title: "Clothes", price: "120\$"),
                  makeProduct(image: "assets/images/glass.jpg", title: "Glass", price: "100\$"),
                  makeProduct(image: "assets/images/perfume.jpg", title: "Perfume", price: "90\$"),
                  makeProduct(image: "assets/images/person.jpg", title: "Person", price: "300\$"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeProduct({image, title, price}){
    return Container(
      height: 200,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
          )
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1)
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.favorite_border, color: Colors.white,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyle(color: Colors.white, fontSize: 20),),
                    Text(price, style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
                  ],
                ),
                Container(
                  height: 40,
                  width: 40,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Icon(Icons.add_shopping_cart, size: 18, color: Colors.grey,),
                  ),
                )
              ],
            ),
          ],
        )
      ),
    );
  }
}
