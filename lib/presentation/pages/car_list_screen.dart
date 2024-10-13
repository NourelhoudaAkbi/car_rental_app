import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:car_rental_app/data/models/car.dart';

import 'package:car_rental_app/presentation/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {

  List<Car> cars = [
    Car(model: 'BMW', distance: 870, fuelCapacity: 50, pricePerHour: 50),
    Car(model: 'BMW', distance: 870, fuelCapacity: 50, pricePerHour: 60),
    Car(model: 'BMW', distance: 870, fuelCapacity: 50, pricePerHour: 100),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Car'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
              itemCount: cars.length,
              itemBuilder: (context, index){
                return CarCard(car: cars[index]);
              },
            
          
         
        )
      
    );
  }

}

