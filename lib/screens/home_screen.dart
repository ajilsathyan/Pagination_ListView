import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:pagination/models/doctors_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollController = ScrollController();

  bool isLoading = false;

  List<DoctorsList>? doctors = [];

  @override
  void initState() {
    _getMoreData();
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        print(_scrollController.position.pixels);
        _getMoreData();
      }
    });
  }

  void _getMoreData() async {
    if (!isLoading) {
      setState(() {
        isLoading = true;
      });
      String base =
          "https://softawork2.xyz/fandlApi/product/get_doctor_all?page_no=1&user_id=46&distance_range=100000";
      var url = Uri.parse(base);
      var response = await http.get(url);

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        List<dynamic> jsonbody = json['doctorAllList'];
        List<DoctorsList> doctorsList =
            jsonbody.map((dynamic item) => DoctorsList.fromJson(item)).toList();
        print(jsonbody);
        setState(() {
          isLoading = false;
          doctors!.addAll(doctorsList);
        });
      } else {
        throw Exception('Failed');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagination App"),
      ),
      body: ListView.builder(
        itemCount: doctors!.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (doctors!.length == 0) {
            return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: CircularProgressIndicator(),
                ));
          }
          if (index == doctors!.length) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Center(
                child: LoadingIndicator(
                    indicatorType: Indicator.ballSpinFadeLoader,
                    colors: [Colors.red, Colors.green, Colors.blue],
                    strokeWidth: 2,
                    backgroundColor: Colors.white,
                    pathBackgroundColor: Colors.white),
              ),
            );
          } else {
            return Card(
              shadowColor: Colors.blue,
              elevation: 2,
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${doctors![index].doctorsName}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Clinical Name: ${doctors![index].doctorClinicName}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          Spacer(),
                          Text(
                            "Website: ${doctors![index].doctorsWebsite}",
                            style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Address: ${doctors![index].doctorsAddress}",
                            style: TextStyle(fontSize: 14),
                          ),
                          Spacer(),
                          Text(
                            "Email: ${doctors![index].doctorsEmail}",
                            style: TextStyle(
                                color: Colors.red,
                                decoration: TextDecoration.underline,
                                fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
        controller: _scrollController,
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
