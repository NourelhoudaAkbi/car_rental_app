import 'package:car_rental_app/presentation/widgets/car_logo.dart';
import 'package:car_rental_app/presentation/widgets/text_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:car_rental_app/presentation/bloc/car_bloc.dart';
import 'package:car_rental_app/presentation/bloc/car_state.dart';
import 'package:car_rental_app/presentation/widgets/car_card.dart';

class CarListScreen extends StatelessWidget {
  @override
/*************  ✨ Codeium Command ⭐  *************/
/******  ab53006d-f17c-495b-a7f0-9d374912f7d5  *******/
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Carly',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Color(0xffF3F3F3),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Colors.black, size: 16),
                            SizedBox(width: 10),
                            Text(
                              'Search',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color(0xffF3F3F3),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Icon(Icons.filter_list, color: Colors.black, size: 17),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TextRow(text1: 'Brands', text2: 'View All'),
                SizedBox(height: 20),
                ScrollableCarNamesRow(), // Custom scrollable widget for car names
                SizedBox(height: 20),
                TextRow(text1: 'Available Cars', text2: 'View All'),
                
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded( // Expands the GridView inside the Column
            child: BlocBuilder<CarBloc, CarState>(
              builder: (context, state) {
                if (state is CarsLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is CarsLoaded) {
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Two columns
                       // Space between rows
                      childAspectRatio: 0.8, // Adjust the aspect ratio as needed
                    ),
                    itemCount: state.cars.length,
                    itemBuilder: (context, index) {
                      return CarCard(car: state.cars[index]); // Your custom car card
                    },
                  );
                } else if (state is CarsError) {
                  return Center(
                    child: Text('Error: ${state.message}'),
                  );
                }
                return Container();
              },
            ),
          ),
        ],
      ),
    );
  }
}
