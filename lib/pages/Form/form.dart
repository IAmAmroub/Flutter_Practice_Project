import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Texas',
  'Shaanxi',
  'Dubai',
  'Istanbul',
  'Casablanca'
];

const List<String> listClasses = <String>[
  'Economy',
  'Business',
  'First',
];

const List<int> listNbrPassage = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

// ignore: camel_case_types
enum flightType { oneflight, twoflight }

class _FormPageState extends State<FormPage> {
  TextEditingController dateinput = TextEditingController();

  flightType flighttype = flightType.oneflight;
  bool isHappy = true;

  DateTimeRange dateRange = DateTimeRange(
    start: DateTime.now(),
    end: DateTime(2099, 12, 1),
  );

  @override
  Widget build(BuildContext context) {
    // final start = dateRange.start;
    // final end = dateRange.end;

    String? dropdownValueFrom;
    String? dropdownValueTo;
    String dropdownValueClass = listClasses.first;
    int dropdownValueNbr = listNbrPassage.first;

    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlue,
          child: isHappy
              ? const Icon(
                  Icons.sentiment_satisfied_alt_outlined,
                  size: 32,
                )
              : const Icon(
                  Icons.sentiment_neutral_sharp,
                  size: 32,
                ),
          onPressed: () {
            setState(() {
              isHappy = !isHappy;
            });
          },
        ),
        body: Container(
          padding: const EdgeInsets.all(32),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      iconSize: 34,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 34,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.notifications_none),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 300,
                              padding: const EdgeInsets.all(50),
                              decoration: const BoxDecoration(
                                color: Colors.lightBlue,
                              ),
                              child: const Image(
                                image: NetworkImage(
                                    "https://i.giphy.com/media/bGgsc5mWoryfgKBx1u/giphy.webp"),
                              ),
                            );
                          },
                        );
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Book Your \nFlight",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                        shadows: <Shadow>[
                          Shadow(
                            blurRadius: 15,
                            color: Colors.grey,
                          ),
                          Shadow(
                            blurRadius: 10,
                            offset: Offset(5, 5),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey,
                            spreadRadius: 2,
                          )
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(
                          Icons.flight,
                          size: 32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: flighttype == flightType.oneflight
                          ? ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.lightBlue),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                              ),
                            )
                          : ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                              ),
                            ),
                      onPressed: () {
                        setState(() {
                          flighttype = flightType.oneflight;
                        });
                      },
                      child: const Text(
                        'One-way',
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                    ElevatedButton(
                      style: flighttype == flightType.oneflight
                          ? ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.grey),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                              ),
                            )
                          : ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.lightBlue),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                              ),
                            ),
                      onPressed: () {
                        setState(() {
                          flighttype = flightType.twoflight;
                        });
                      },
                      child: const Text(
                        'Return',
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                DropdownButtonFormField(
                  icon: const Icon(
                    Icons.arrow_drop_down_circle,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.flight_takeoff),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'From',
                  ),
                  value: dropdownValueFrom,
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValueTo = newValue!;
                    });
                  },
                  hint: const Text('Select Origin Airport'),
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField(
                  icon: const Icon(Icons.arrow_drop_down_circle),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.flight_land),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'To',
                  ),
                  value: dropdownValueTo,
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValueTo = newValue!;
                    });
                  },
                  hint: const Text('Select Destination Airport'),
                ),
                const SizedBox(
                  height: 20,
                ),
                flighttype == flightType.oneflight
                    ? TextFormField(
                        readOnly: true,
                        controller: dateinput,
                        decoration: InputDecoration(
                          label: const Text('Pick Date'),
                          suffixIcon: IconButton(
                            onPressed: _selectDate,
                            icon: const Icon(Icons.date_range),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      )
                    : TextFormField(
                        readOnly: true,
                        controller: dateinput,
                        decoration: InputDecoration(
                          label: const Text('Pick Dates'),
                          suffixIcon: IconButton(
                            onPressed: _selectDates,
                            icon: const Icon(Icons.date_range),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 180,
                      child: DropdownButtonFormField(
                        icon: const Icon(Icons.keyboard_arrow_down),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelText: 'Class',
                        ),
                        value: dropdownValueClass,
                        items: listClasses
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValueClass = newValue!;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 140,
                      child: DropdownButtonFormField(
                        icon: const Icon(Icons.keyboard_arrow_down),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelText: 'Passenger',
                        ),
                        value: dropdownValueNbr,
                        items: listNbrPassage
                            .map<DropdownMenuItem<int>>((int value) {
                          return DropdownMenuItem<int>(
                            value: value,
                            child: Text('$value'),
                          );
                        }).toList(),
                        onChanged: (int? newValue) {
                          setState(() {
                            dropdownValueNbr = newValue!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future _selectDate() async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      initialDate: DateTime.now(),
      lastDate: DateTime(2099),
    );
    if (selectedDate == null) return;

    setState(() {
      dateinput.text =
          '${selectedDate.year}-${selectedDate.month}-${selectedDate.day}';
    });
  }

  Future _selectDates() async {
    DateTimeRange? selectedDates = await showDateRangePicker(
      context: context,
      firstDate: dateRange.start,
      lastDate: dateRange.end,
    );
    if (selectedDates == null) return;

    setState(() {
      dateinput.text =
          '${selectedDates.start.year}-${selectedDates.start.month}-${selectedDates.start.day} | ${selectedDates.end.year}-${selectedDates.end.month}-${selectedDates.end.day}';
    });
  }
}
