import 'package:app_one/constant/myTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchResultTab extends StatefulWidget {
  const SearchResultTab({super.key});

  @override
  State<SearchResultTab> createState() => _SearchResultTabState();
}

class _SearchResultTabState extends State<SearchResultTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0.w),
      child: SizedBox(
        height: 40.h,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 4.h),
              child: Icon(
                Icons.send_rounded,
                color: primaryColor,
                size: 14.w,
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Darrell Steward",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.w),
                ),
                Text(
                  "3517 W. Gray St. Utica, Pennsylvania 57867",
                  style: GoogleFonts.poppins(
                      color: Color(0xFF5C6672),
                      fontWeight: FontWeight.w400,
                      fontSize: 12.w),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RecentSearchTabs extends StatefulWidget {
  const RecentSearchTabs({super.key});

  @override
  State<RecentSearchTabs> createState() => _RecentSearchTabsState();
}

class _RecentSearchTabsState extends State<RecentSearchTabs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0.w),
      child: SizedBox(
        height: 40.h,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 4.h),
              child: Icon(
                Icons.location_on,
                color: primaryColor,
                size: 14.w,
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Darrell Steward",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.w),
                ),
                Text(
                  "3517 W. Gray St. Utica, Pennsylvania 57867",
                  style: GoogleFonts.poppins(
                      color: Color(0xFF5C6672),
                      fontWeight: FontWeight.w400,
                      fontSize: 12.w),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
