import 'package:flutter/material.dart';
import 'package:vitti_heritage_app/screens/home/models/visitedScrollCardModel.dart';


class VisitedScrollCard extends StatelessWidget {
  const VisitedScrollCard({super.key, required this.data});

  final VisitedScrollCardModel data;
  
  @override
  Widget build(BuildContext context) {
    return Container(
   
      height: 150,
      width: 220,
      decoration: BoxDecoration(
        image: DecorationImage(
            colorFilter: const ColorFilter.mode(
              Colors.black26,
              BlendMode.darken,
            ),
            image: data.image,
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_outlined,color: Colors.white,)),
            ],
          ),
          Expanded(child: Container()),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
               mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ScrollCardName(
              name: data.name,
            ),
            ScrollCardLocation(location: data.location),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ScrollCardName extends StatelessWidget {
  const ScrollCardName({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      softWrap: true,
      style: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
    );
  }
}

class ScrollCardLocation extends StatelessWidget {
  const ScrollCardLocation({super.key, required this.location});
  final String location;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(
          Icons.location_on_sharp,
          size: 20,
          color: Colors.white,
        ),
        const SizedBox(
          width: 2,
        ),
        Flexible(
          child: Text(
            location,
            style: const TextStyle(
                fontSize: 10, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
