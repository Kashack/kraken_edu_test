import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kraken_edu_test/constant.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9FBFF),
      appBar: AppBar(
        title: Text("Buy my first car"),
        leading: Icon(Icons.chevron_left),
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Card(
              elevation: 0,
              color: cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Color(0xFFF0F1EF))),
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$10,000.00",
                              style: TextStyle(
                                color: cardTextColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              )),
                          Text("\$70,000.00",
                              style: TextStyle(
                                color: cardTextColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total amount invested",
                              style: TextStyle(color: greyTextColor)),
                          Text("Current Value",
                              style: TextStyle(color: greyTextColor)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: LinearProgressIndicator(
                        color: sliderColor,
                        backgroundColor: greyTextColor,
                        value: 0.5,
                        minHeight: 6,
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    Text(
                      "5th May,2023",
                      style: TextStyle(
                          color: myTextColor, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFECF6F7)),
                    child: Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    "Top-Up",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFECF6F7)),
                    child: Icon(
                      CupertinoIcons.chart_bar,
                      size: 30,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  Text(
                    "Earnings",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFECF6F7)),
                    child: Icon(
                      Icons.settings_outlined,
                      size: 30,
                      weight: 10,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    "Customize",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "You invested in",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                ListTile(
                  tileColor: Color(0xFFFFFDFD),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: Color(0xFFF0F1EF))),
                  leading: Container(
                    height: 30,
                    width: 30,
                    child: Image.asset("assets/circle_purple.png"),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "DefiPulse Index",
                      style: TextStyle(
                        color: Color(0xFF6E47BF),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  subtitle: Text(
                    "\$0.0026",
                    style: TextStyle(
                      color: Color(0xFF757A83),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("+7.89%",
                          style: TextStyle(fontSize: 14, color: Color(0xFF1C9C64))),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recent transaction",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    )),
                Text(
                  "see all",
                  style: TextStyle(
                    color: cardTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: transactionDemo.length,
              itemBuilder: (context, index) {
                Color iconColor;
                Color backgroundColor;
                IconData icon;
                if (transactionDemo[index]["Status"] == "Pending") {
                  icon = Icons.add;
                  iconColor = Color(0xFFE3BA3D);
                  backgroundColor = Color(0xFFFEFAF1);
                } else {
                  icon = CupertinoIcons.arrow_down_left;
                  iconColor = Color(0xFF36A776);
                  backgroundColor = Color(0xFFEFF8F5);
                }
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: backgroundColor,
                            ),
                            child: Icon(
                              icon,
                              size: 20,
                              color: iconColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              transactionDemo[index]["Transaction Desc"],
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              transactionDemo[index]["Date"],
                              style: TextStyle(),
                            ),
                            Text(transactionDemo[index]["Amount"],
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Transaction Status",
                            style: TextStyle(fontWeight: FontWeight.bold,),
                          ),
                          Text(transactionDemo[index]["Status"],
                              style: TextStyle(fontWeight: FontWeight.bold,color: iconColor)),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

List transactionDemo = [
  {
    "Transaction Desc": "Payout for my new car",
    "Date": "January 5, 2020",
    "Status": "Pending",
    "Amount": "\$10,000"
  },
  {
    "Transaction Desc": "Fund Plan",
    "Date": "January 8, 2020",
    "Status": "Successful",
    "Amount": "\$10,000"
  },
  {
    "Transaction Desc": "Fund Plan",
    "Date": "January 10, 2020",
    "Status": "Successful",
    "Amount": "\$10,000"
  }
];
