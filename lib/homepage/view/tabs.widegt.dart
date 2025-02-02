import 'package:app_one/details/view/details.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ComanTabs extends StatefulWidget {
  const ComanTabs({super.key});

  @override
  State<ComanTabs> createState() => _ComanTabsState();
}

class _ComanTabsState extends State<ComanTabs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              CupertinoPageRoute(builder: (context) => PerticularDetails()));
        },
        child: Container(
          height: 200.h,
          width: 175.w,
          decoration: BoxDecoration(
              color: Color(0xFFDBF0EE), borderRadius: BorderRadius.circular(8)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 88.h,
                width: 160.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/Rectangle 25.png'),
                        fit: BoxFit.fill),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(6)),
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1 private room in 2BHK ",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 10.w),
                      ),
                      Text(
                        "RK beach road \nFor men + Private room + immediate",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 8.w),
                      ),
                      Text(
                        "₹ 7000 / month",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 10.w),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
