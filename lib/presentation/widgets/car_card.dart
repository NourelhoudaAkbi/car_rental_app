import 'package:car_rental_app/presentation/pages/car_details_page.dart';
import 'package:flutter/material.dart';
import 'package:car_rental_app/data/models/car.dart';


class CarCard extends StatelessWidget {
  final Car car;

  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CardDetailsPage(car: car,))
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xffF3F3F3),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 5
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/car_image.png', height: 100,
            ),
            Text(car.model, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            SizedBox(height: 5,),
            // price per hour
            Text('${car.pricePerHour} / hour', style: TextStyle(fontSize: 16),)
            
          ],
        ),
      ),
    );
  }
}
