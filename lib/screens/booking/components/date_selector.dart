import 'package:flutter/material.dart';
import 'package:movie_ticket_app/constants/constants.dart';

class DateSelector extends StatefulWidget {
  const DateSelector({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DateSelectorState createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  int dateIndexSelected = 1;
  DateTime currentDate = DateTime.now();

  String _dayFormat(int dayWeek) {
    switch (dayWeek) {
      case 1:
        return "MO";
      case 2:
        return "TU";
      case 3:
        return "WE";
      case 4:
        return "TH";
      case 5:
        return "FR";
      case 6:
        return "Sa";
      case 7:
        return "Su";
      default:
        return "MO";
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Expanded(
      flex: 13,
      child: Container(
        width: size.width,
        padding: const EdgeInsets.only(left: appPadding * 1.5),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: white.withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  )),
            ),
            SizedBox(
              width: size.width,
              child: ListView.builder(
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    var date = currentDate.add(Duration(days: index));
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          dateIndexSelected = index;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(appPadding / 5),
                        margin: EdgeInsets.symmetric(
                          vertical: size.height * 0.02,
                          horizontal: 12,
                        ),
                        width: 44,
                        decoration: BoxDecoration(
                          color: dateIndexSelected == index
                              ? primary
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              date.day.toString(),
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  height: 1.0,
                                  color: index == dateIndexSelected
                                      ? black
                                      : white),
                            ),
                            Text(
                              _dayFormat(date.weekday),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: index == dateIndexSelected
                                    ? black
                                    : white.withOpacity(0.5),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
