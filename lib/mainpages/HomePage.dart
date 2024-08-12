// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

List upcomingTransactions = [
  [
    const Icon(
      Icons.diamond,
      color: Colors.red,
      size: 40,
    ),
    "₹150.52",
    DateTime(2022, 10, 16),
    "Luxury"
  ],
  [
    const Icon(
      Icons.logo_dev,
      color: Colors.blue,
      size: 40,
    ),
    "₹180.01",
    DateTime(2022, 10, 17),
    "Software"
  ],
  [
    const Icon(
      Icons.polymer,
      color: Colors.blue,
      size: 40,
    ),
    "₹10.32",
    DateTime(2022, 10, 18),
    "Tooling"
  ],
  [
    const Icon(
      Icons.anchor,
      size: 40,
      color: Colors.green,
    ),
    "₹19.39",
    DateTime(2022, 10, 22),
    "Vacation/Travel"
  ],
  [
    const Icon(
      Icons.music_note,
      color: Colors.purple,
      size: 40,
    ),
    "₹90.19",
    DateTime(2022, 10, 23),
    "Education"
  ],
  [
    const Icon(
      Icons.face,
      color: Colors.purple,
      size: 40,
    ),
    "₹89.32",
    DateTime(2022, 10, 24),
    "Makeup"
  ],
  [
    const Icon(
      Icons.music_note,
      color: Colors.purple,
      size: 40,
    ),
    "₹90.19",
    DateTime(2022, 10, 23),
    "Education"
  ],
];

List pastTransactions = [
  [
    const Icon(
      Icons.diamond,
      color: Colors.pink,
      size: 40,
    ),
    "₹150.52",
    DateTime(2022, 9, 16),
    "Jewellery"
  ],
  [
    const Icon(
      Icons.home,
      color: Colors.green,
      size: 40,
    ),
    "-₹180.32",
    DateTime(2022, 9, 13),
    "Gardening"
  ],
  [
    const Icon(
      Icons.branding_watermark,
      color: Colors.blue,
      size: 40,
    ),
    "-₹112.39",
    DateTime(2022, 9, 11),
    "Software"
  ],
  [
    const Icon(
      Icons.polymer,
      color: Colors.orange,
      size: 40,
    ),
    "-₹170.19",
    DateTime(2022, 9, 10),
    "Materials"
  ],
  [
    const Icon(
      Icons.face,
      color: Colors.blue,
      size: 40,
    ),
    "-₹250.12",
    DateTime(2022, 9, 9),
    "Beauty"
  ],
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        shrinkWrap: false,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.blueAccent,
              // image: DecorationImage(
              //     fit: BoxFit.fill,
                  // image: AssetImage('assets/background.png'))),
            ),
            child: Column(children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(30, 60, 20, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CircleAvatar(child: Icon(Icons.person)),
                      ElevatedButton(
                        onPressed: (() => {}),
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all<Color>(Colors.white)),
                        child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Payday in a week",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.greenAccent),
                            )),
                      )
                    ],
                  )),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, bottom: 20, top: 15),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "Total Balance To Spend",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "₹5785.55",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 20, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Planning Ahead",
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => transactionsPage())));
                      },
                      child: Text(
                        "-₹540.26",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SizedBox(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: upcomingTransactions.length,
                  itemBuilder: (context, int index) {
                    return SizedBox(
                      height: 50,
                      width: 120,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 0.5,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                upcomingTransactions[index][0],
                                Text(
                                  upcomingTransactions[index][1],
                                  style: const TextStyle(
                                      color: Colors.greenAccent,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "In ${upcomingTransactions[index][2].difference(DateTime.now()).inDays.toString()} days",
                                  style: TextStyle(
                                      color: Colors.grey[500],
                                      fontStyle: FontStyle.italic),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 20, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Last Week's Expenses",
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "-1592.13",
                      style: TextStyle(
                          color: Colors.grey[700], fontWeight: FontWeight.w500),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                    )
                  ],
                )
              ],
            ),
          ),
          const CalendarWeeklyView()
        ],
      ),
    ]));
  }

  transactionsPage() {}
}

class CalendarWeeklyView extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const CalendarWeeklyView();

  @override
  State<CalendarWeeklyView> createState() => _CalendarWeeklyViewState();
}

class _CalendarWeeklyViewState extends State<CalendarWeeklyView> {
  int? groupValue = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    DateTime today = DateTime.now();

    Widget buildSegment(
        String dateAbr, String datenumber, BuildContext context) {
      return SizedBox(
        height: screenHeight * 0.08,
        width: screenWidth * 0.9,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(
            dateAbr[0] + dateAbr.substring(1).toUpperCase(),
            style: const TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
          ),
          Text(datenumber, style: const TextStyle(fontSize: 14)),
        ]),
      );
    }




    Widget calendarBox(BuildContext context) => SizedBox(
        height: screenHeight * 0.1,
        width: screenWidth * 0.9,
        child: Container(
            alignment: Alignment.center,
            child: CupertinoSlidingSegmentedControl<int>(
                backgroundColor: Colors.transparent,
                thumbColor: Colors.greenAccent,
                padding: const EdgeInsets.all(5),
                groupValue: groupValue,
                children: {
                  0: buildSegment(
                      DateFormat('EEEE')
                          .format(today.subtract(const Duration(days: 0))),
                      DateFormat('d')
                          .format(today.subtract(const Duration(days: 0))),
                      context),
                  1: buildSegment(
                      DateFormat('EEEE')
                          .format(today.subtract(const Duration(days: 1))),
                      DateFormat('d')
                          .format(today.subtract(const Duration(days: 1))),
                      context),
                  2: buildSegment(
                      DateFormat('EEEE')
                          .format(today.subtract(const Duration(days: 2))),
                      DateFormat('d')
                          .format(today.subtract(const Duration(days: 2))),
                      context),
                  3: buildSegment(
                      DateFormat('EEEE')
                          .format(today.subtract(const Duration(days: 3))),
                      DateFormat('d')
                          .format(today.subtract(const Duration(days: 3))),
                      context),
                  4: buildSegment(
                      DateFormat('EEEE')
                          .format(today.subtract(const Duration(days: 4))),
                      DateFormat('d')
                          .format(today.subtract(const Duration(days: 4))),
                      context),
                  5: buildSegment(
                      DateFormat('EEEE')
                          .format(today.subtract(const Duration(days: 5))),
                      DateFormat('d')
                          .format(today.subtract(const Duration(days: 5))),
                      context),
                  6: buildSegment(
                      DateFormat('EEEE')
                          .format(today.subtract(const Duration(days: 6))),
                      DateFormat('d')
                          .format(today.subtract(const Duration(days: 6))),
                      context),
                },
                onValueChanged: (value) {
                  setState(() {
                    groupValue = value;
                    print(groupValue);
                  });
                })),
      );

    return Column(
      children: [
        calendarBox(context),
        // You need to define VerticalList or replace it with your widget
        // VerticalList(date: dates[groupValue!.toInt()])
      ],
    );
  }
}

// ignore: must_be_immutable
class VerticalList extends StatefulWidget {
  VerticalList({required this.date});
  late DateTime date;

  @override
  State<VerticalList> createState() => _VerticalListState();
}

class _VerticalListState extends State<VerticalList> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var pastTransactions;
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(top: 5),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: pastTransactions.length,
        itemBuilder: (context, int index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: ListTile(
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.greenAccent, width: 0.25),
                borderRadius: BorderRadius.circular(10),
              ),
              leading: pastTransactions[index][0],
              title: Text(
                pastTransactions[index][1],
                style: const TextStyle(color: Colors.greenAccent),
              ),
              subtitle: Text(pastTransactions[index][3]),
              trailing: Text(DateFormat.MMMMEEEEd()
                  .format(pastTransactions[index][2])
                  .toString()),
            ),
          );
        });
  }
}