import 'package:app_one/constant/myTheme.dart';
import 'package:app_one/search/view/tabs.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 16.w,
            ),
            color: Colors.black,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: SizedBox(
            height: 36.h,
            width: 288.w,
            child: TextFormField(
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => SearchPage()));
              },
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search by locality",
                hintStyle:
                    GoogleFonts.poppins(color: Colors.black, fontSize: 12),
                fillColor: Colors.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(40.r),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(40.r),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(40.r),
                ),
              ),
            ),
          ),
          actions: [
            SizedBox(
              width: 30.w,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 12.w,
                  ),
                  Icon(
                    Icons.location_on,
                    color: primaryColor,
                    size: 18.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Use my current location",
                    style: GoogleFonts.poppins(
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 12.w),
                  )
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Saved Address",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 12.w)),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return SearchResultTab();
                  }),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Divider(),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Recent searches",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 12.w)),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return RecentSearchTabs();
                  })
            ],
          ),
        ));
  }
}
