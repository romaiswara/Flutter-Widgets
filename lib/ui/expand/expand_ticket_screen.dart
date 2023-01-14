import 'package:flutter/material.dart';
import 'package:flutter_widgets/config/config.dart';
import 'package:flutter_widgets/constant/constant.dart';

class ExpandTicketScreen extends StatelessWidget {
  const ExpandTicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expand Ticket Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 12),
        children: [
          /// booking code
          Card(
            elevation: 3,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  const Text(
                    "Booking Code",
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(width: 7),
                  const Spacer(),
                  Text(
                    "CXDT2887A",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: ColorConfig.primary,
                    ),
                  ),
                  Container(width: 10),
                  IconButton(
                    icon: Icon(
                      Icons.content_copy,
                      color: Colors.grey[500],
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),

          const SizedBox(height: 12),

          /// flight
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            elevation: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: Icon(
                        Icons.flight,
                        color: ColorConfig.primary,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Lion JT-539",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          "Promo (Subclass T)",
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const Divider(thickness: 0.5, height: 16),
                Container(
                  height: 150,
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "17.40",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "28 Sep",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "20.40",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "28 Sep",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          Container(height: 5),
                          Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorConfig.primary,
                                  width: 2,
                                ),
                                color: Colors.white,
                                shape: BoxShape.circle),
                          ),
                          Expanded(
                            child: Container(
                              width: 2,
                              color: ColorConfig.primary,
                            ),
                          ),
                          Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: ColorConfig.primary,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Container(height: 5),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Solo (SOC)",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Adi Soemarmo",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Jakarta (CGK)",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "Soekarno Hatta Intl Airport",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(thickness: 0.5, height: 16),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: Text(
                    "duration 1 hour 15 minutes",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
          ),

          /// pre flight info
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 3,
            child: Theme(
              data: ThemeConfig.theme.copyWith(
                dividerColor: Colors.transparent,
              ),
              child: ExpansionTile(
                leading: Icon(
                  Icons.flight,
                  color: ColorConfig.primary,
                ),
                title: const Align(
                  alignment: Alignment(-1.2, 0),
                  child: Text(
                    'Pre-Flight Info',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                children: [
                  const ListTile(
                    title: Text(StringConstant.mediumLoremIpsum),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      child: const Text(
                        'Hide',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// passenger(s)
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 3,
            child: Theme(
              data: ThemeConfig.theme.copyWith(
                dividerColor: Colors.transparent,
              ),
              child: ExpansionTile(
                leading: Icon(
                  Icons.person,
                  color: ColorConfig.primary,
                ),
                title: Align(
                  alignment: const Alignment(-1.2, 0),
                  child: Column(
                    children: [
                      const Text(
                        "Passenger(s)",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        "2 Adult 1 Infant",
                        style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('1. Mr. Lionel Messi'),
                            SizedBox(width: 8),
                            Chip(
                              label: Text('Adult'),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('2. Mrs. Agnes Mo'),
                            SizedBox(width: 8),
                            Chip(
                              label: Text('Adult'),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('3. Steven'),
                            SizedBox(width: 8),
                            Chip(
                              label: Text('Infant'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
