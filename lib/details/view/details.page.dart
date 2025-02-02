import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PerticularDetails extends StatefulWidget {
  const PerticularDetails({super.key});

  @override
  State<PerticularDetails> createState() => _PerticularDetailsState();
}

class _PerticularDetailsState extends State<PerticularDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            height: 340.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/details.png"), fit: BoxFit.fill)),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 287.h,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  height: 600.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.r),
                          topLeft: Radius.circular(40.r))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
