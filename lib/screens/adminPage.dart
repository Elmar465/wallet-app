

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_trainig/screens/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:fl_chart/fl_chart.dart';



// import 'package:charts_flutter/flutter.dart';

class AdminPage extends StatefulWidget {
   AdminPage({super.key});

  @override
  // ignore: prefer_const_constructors, no_logic_in_create_state
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {



   _AdminPageState({
    Key? key,
   
  });
  int index = 0;
  var data = [
    {"icon": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Netflix_icon.svg/1200px-Netflix_icon.svg.png", "title": "Netflix", "subtitle" : "Monthly Payment", "amount" : r"$50"},
    {"icon": "https://play-lh.googleusercontent.com/RyoQTmHnxsxPYabsETmWVXHtLorVh_yOO48hsdv2VmI-Uki4qt5c5vV1cicJODV56A4", "title": "Google Cloud", "subtitle" : "Monthly Payment", "amount" : r"$50"},
    {"icon": "https://play-lh.googleusercontent.com/UrY7BAZ-XfXGpfkeWg0zCCeo-7ras4DCoRalC_WXXWTK9q5b0Iw7B0YQMsVxZaNB7DM", "title": "Spotify", "subtitle" : "Monthly Payment", "amount" : r"$50"},
    

  ];
  PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      body: SafeArea(
        child: Stack(
          children: [ 
            PageView(
              controller: controller,
              children: [
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                           // ignore: prefer_const_literals_to_create_immutables
                           children: [
                            // ignore: prefer_const_constructors
                            Text("Wallet", style: GoogleFonts.poppins(fontSize: 20.0,fontWeight: FontWeight.bold),),
                            SizedBox(height: 2,),
                            Text("Active",style: GoogleFonts.poppins(fontSize: 14.0,fontWeight: FontWeight.w400))
                           ], 
                          ),
                          CircleAvatar(
                            radius: 27.0,
                            backgroundImage: NetworkImage("https://scontent.fgyd4-2.fna.fbcdn.net/v/t1.6435-9/192331062_107712478187322_1919226145514806975_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=lLOgLDF-y0IAX_D0Vw4&_nc_ht=scontent.fgyd4-2.fna&oh=00_AfBNk5ThwvTz72JECRCxmzYGpMSk2bJ6DkS4paiiHR9Xlg&oe=63E00BCD"),
                            backgroundColor: Colors.transparent,
                          )
                         ], 
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height:140.0,
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex:1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Balance", style: GoogleFonts.poppins(fontSize: 14.0,fontWeight: FontWeight.w400, color: Colors.white),),
                                    // ignore: prefer_const_constructors
                                    SizedBox(height: 2,),
                                    Text(r"$1000",style: GoogleFonts.poppins(fontSize: 20.0,fontWeight: FontWeight.bold, color: Colors.white)),
                                    
                                  ]
                                ),
                              ),
                                    Expanded(
                                flex:1,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Card", style: GoogleFonts.poppins(fontSize: 14.0,fontWeight: FontWeight.bold, color: Colors.white),),
                                    // ignore: prefer_const_constructors
                                    SizedBox(height: 2,),
                                    Text("Kapital Bank",style: GoogleFonts.poppins(fontSize: 20.0,fontWeight: FontWeight.bold, color: Colors.white)),
                                  ]
                                ),
                              ),
                            ],
                          )
                        ),
                        SizedBox(height: 20.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            buttonWidget(text: "Transfer", icon: Iconsax.convert, callback: () {}),
                            buttonWidget(text: "Payment", icon: Iconsax.export, callback: () {}),
                            buttonWidget(text: "Pay out", icon: Iconsax.money, callback: () {}),
                            buttonWidget(text: "Top up", icon: Iconsax.add, callback: () {}),
                            
                          ],
                        ),
                        SizedBox(height: 20.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text("Last Transactions", style: GoogleFonts.poppins(fontSize: 20.0,fontWeight: FontWeight.bold),),
                          Text("Wallet", style: GoogleFonts.poppins(fontSize: 20.0,fontWeight: FontWeight.w400),),
                        ],
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: data.length,
                          itemBuilder:(context, index) => ListTile(          
                          leading: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Image.network(data[index]["icon"].toString()),),
                            title: Text(data[index]["title"].toString(), style: GoogleFonts.poppins(fontSize: 20.0,fontWeight: FontWeight.w600),),
                            subtitle: Text(data[index]["subtitle"].toString(), style: GoogleFonts.poppins(fontSize: 20.0,fontWeight: FontWeight.w300),),
                            trailing: Text(data[index]["amount"].toString()),
                        
                          )
                        )
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                       
                              Text("Total Balance", style: GoogleFonts.poppins(fontSize: 14.0,fontWeight: FontWeight.w400),),
                              Text(r"$1000", style: GoogleFonts.poppins(fontSize: 30.0,fontWeight: FontWeight.bold, color: secondaryColor),),
                               SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Text("Income Stats", style: GoogleFonts.poppins(fontSize: 20.0,fontWeight: FontWeight.w600),),
                            Text("Dec-Jan", style: GoogleFonts.poppins(fontSize: 20.0,fontWeight: FontWeight.w400),),
                        ],
                      ),
                      Container(
                        height: 180,
                        child: Expanded(
                          child: LineChart(
                            LineChartData(
                              lineTouchData: LineTouchData(handleBuiltInTouches: false),
                              gridData: FlGridData(show: false),
                              borderData: FlBorderData(show: false),
                              lineBarsData: [
                                LineChartBarData(
                                  isCurved: true,
                                  color: secondaryColor,
                                  barWidth: 2,
                                  isStrokeCapRound: true,
                                  dotData: FlDotData(show: false),
                                  spots: [
                                    FlSpot(0,1),
                                    FlSpot(1,1.2),
                                    FlSpot(2,1.5),
                                    FlSpot(3,1.4),
                                    FlSpot(4,3.4),
                                    FlSpot(5,2),
                                  ]
                                )
                              ],
                              titlesData: FlTitlesData(
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                  )
                                ),
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    interval: 1,
                                    getTitlesWidget: ((value, meta) {
                                      switch (value.toInt()) {
                                        case 0:
                                        return Text("Dec");   
                                        case 1:
                                         return Text("Jan");
                                        case 2:
                                        return Text("Feb");   
                                        case 3:
                                        return Text("March");      
                                        case 4:
                                        return Text("Apr");   
                                        case 5:
                                         return Text("May");   
                                      }
                                      return Text("");
                                    }                                 
                                     )
                                  )
                                )
                              ),
                              minX: 0,
                              maxX: 5,
                              minY: 4,
                              maxY: 0,
                            )
                          ),
                      )
                      )
                      ],                  
                    ),
                  ),               
                ),            
              ],
              
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child:FloatingNavbar(
                onTap: (i) {
                  setState(() {
                    index = i;
                    controller.jumpToPage(index);
                  });
                },
                currentIndex: index,
                borderRadius:24,
                iconSize: 24,
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(12.0),
                selectedBackgroundColor: Colors.transparent,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white70,
                backgroundColor: primaryColor,

                // backgroundColor: Colors.blue,
                items: [
                  FloatingNavbarItem(icon: Iconsax.home1),
                  FloatingNavbarItem(icon: Iconsax.chart),
                  FloatingNavbarItem(icon: Iconsax.notification),
                  FloatingNavbarItem(icon: Iconsax.setting), 
                ],
              )
            ),
          ],
        ),
      )
    );
  }

  ElevatedButton adminPage(BuildContext context) {
    return ElevatedButton(
      autofocus:true,
      child: Text(""),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}

class buttonWidget extends StatelessWidget {
  const buttonWidget({

    Key? key, required this.text, required this.icon, required this.callback,
  }) : super(key: key) ;
  final String text;
  final IconData icon;
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
        onPressed: callback,
      
        // ignore: sort_child_properties_last
        child: Icon(icon,
        color: secondaryColor,          
        ),
        style: OutlinedButton.styleFrom(
          shape: CircleBorder(),
          side:BorderSide(color: Colors.transparent),
          padding: EdgeInsets.all(16.0),
          elevation:5,
          backgroundColor: Colors.white,
          shadowColor: Colors.grey.withOpacity(0.2)
        ),
        ),
        SizedBox(height: 4.0),
        Text(text,style: GoogleFonts.poppins(fontSize: 14.0,fontWeight: FontWeight.w400)),
      ],
    );
  }
}