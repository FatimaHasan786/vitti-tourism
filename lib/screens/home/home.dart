import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final List<String> imagePaths = [
"assets/images/onboarding1.png",
"assets/images/onboarding2.png",
"assets/images/onboarding3.png"
];

late List<Widget> pages;
int activePage=0;
final PageController _pageController =PageController(initialPage: 0);
Timer? _timer;

class _HomePageState extends State<HomePage> {

void startTimer(){
  _timer= Timer.periodic(Duration(seconds: 2), (timer) {
    if(_pageController.page==imagePaths.length-1){
      _pageController.animateToPage(0, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
    else{
      _pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  });
}

@override
void dispose(){
  super.dispose();
  _timer?.cancel();
}

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pages= List.generate(imagePaths.length, (index) => ImagePlaceholder(imagePath: imagePaths[index]));
    startTimer();
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height/4,
               child: PageView.builder(
                controller: _pageController,
                itemCount: imagePaths.length,
                onPageChanged: (value) { setState(() {
                  activePage=value;
                });},
                itemBuilder: (context,index){
                return pages[index];
               }),
              ),
              SearchBar(),
          TopBar(),
         
          
           SliderDot(),
           
            ],
          ),
          
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
          // top: MediaQuery.sizeOf(context).height / 4.2,
          right: 0,
          left: 0,
          bottom: -20,
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
    height: 50,
    decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 1)],
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.black) ,
        color: Colors.white),
    child: const Row(
      children: [
        Icon(
          Icons.search,
          color: Color(0xFFFC8065),
          size: 30,
        ),
        Text(
          "Search any places....",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.black45),
        ),
      ],
    ),
            ),
          ),
        );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(height: 50,width: 50,decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.white,width: 2),image: DecorationImage(image: AssetImage("assets/images/profile.png"),fit: BoxFit.cover)),  
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.white,),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.black26)),),
        ],
      ),
    );
  }
}

class SliderDot extends StatelessWidget {
  const SliderDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
                left: 0,
                bottom: 40,
                right: 0,
                child: Container(
    color: Colors.transparent,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: 
        List<Widget>.generate(pages.length, (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: InkWell(
            onTap: (){
              _pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
            },
            child: CircleAvatar(
              radius: 4,
              backgroundColor: activePage ==index?Colors.blueGrey :Colors.grey,
            ),
          ),
        )),
    ),
                ),
              );
  }
}

class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
         image: DecorationImage(
            colorFilter: const ColorFilter.mode(
              Colors.black26,
              BlendMode.darken,
            ),
            image: AssetImage(imagePath),
            fit: BoxFit.cover),
      ),
    );
  }
}