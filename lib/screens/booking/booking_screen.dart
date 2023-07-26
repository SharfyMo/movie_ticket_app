import 'package:flutter/material.dart';
import 'package:movie_ticket_app/constants/constants.dart';
import 'package:movie_ticket_app/screens/booking/components/custom_app_bar.dart';
import 'package:movie_ticket_app/screens/booking/components/date_selector.dart';
import 'package:movie_ticket_app/screens/booking/components/location_text.dart';
import 'package:movie_ticket_app/screens/booking/components/pay_button.dart';
import 'package:movie_ticket_app/screens/booking/components/seat_selector.dart';
import 'package:movie_ticket_app/screens/booking/components/time_selector.dart';

class BookingScreen extends StatefulWidget {
  final String movieName;

  const BookingScreen({super.key, required this.movieName});

  @override
  // ignore: library_private_types_in_public_api
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            //app bar
            CustomAppBar(widget.movieName),

            //date selector
            const DateSelector(),

            //Time selector
            const TimeSelector(),

            //Location and theatre
            const LocationText(),

            //Seat selector
            const SeatSelector(),

            //Pay button and seat categories
            const PayButton(),
          ],
        ),
      ),
    );
  }
}
