import 'package:flutter/material.dart';
import 'package:movie_ticket_app/constants/constants.dart';
import 'package:movie_ticket_app/screens/booking/booking_screen.dart';

class BuyButton extends StatefulWidget {
  final String movieName;

  const BuyButton(this.movieName, {super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BuyButtonState createState() => _BuyButtonState();
}

class _BuyButtonState extends State<BuyButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 0,
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.08,
        margin: EdgeInsets.symmetric(vertical: size.width * 0.05),
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
            backgroundColor: MaterialStateProperty.all(secondary),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      BookingScreen(movieName: widget.movieName),
                ));
          },
          child: const Text(
            'Buy Ticket',
            style: TextStyle(
                color: white, fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
