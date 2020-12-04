import 'package:flutter/material.dart';
import 'package:booking_app/scr/models/places.dart';

import 'image_card.dart';


class ImageCards extends StatefulWidget {
  @override
  _ImageCardsState createState() => _ImageCardsState();
}

class _ImageCardsState extends State<ImageCards> {
 List<Place> places = [
  Place(place: 'Stranger Things', image: 'Strangerthings.jpg', days: 7),
   Place(place: 'Witcher', image: 'witcher.png', days: 12),
   Place(place: 'Iron Fist', image: 'ironfist.jpg', days: 3),
   Place(place: 'love Robot + Death', image: 'lrd.jpg', days: 7),
   Place(place: 'Money Heist', image: 'Money-Heist-2ffc443.jpg', days: 12),
   Place(place: 'Lucifer', image: 'lucifer.jpg', days: 3),
   Place(place: 'The social dilemma', image: 'the socil.jpg', days: 3),
   Place(place: 'DARK', image: 'Dark_US_Poster.jpg', days: 3),
 ];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: places.length,
            itemBuilder: (_, index) {
              return ImageCard(
                place: places[index],
                name: places[index].place,
                days: places[index].days,
                picture: places[index].image,
              );
            }));
  }
}


