import 'package:app_one/constant/myTheme.dart';
import 'package:app_one/homepage/view/tabs.widegt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TextEditingController();
  ScrollController _scrollController = ScrollController();
  bool _isAppBarCollapsed = false;

  @override
  void initState() {
    super.initState();

    // Add a listener to the scroll controller to detect scroll changes
    _scrollController.addListener(() {
      double offset = _scrollController.offset;
      // Check if the SliverAppBar is collapsed (or scrolled enough)
      if (offset > 100) {
        // Adjust this threshold as needed
        setState(() {
          _isAppBarCollapsed = true;
        });
      } else {
        setState(() {
          _isAppBarCollapsed = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            leading: SizedBox(),
            backgroundColor: primaryColor,
            expandedHeight: 200.0,
            // Height when fully expanded
            floating: false,
            pinned: true, // Keeps the app bar at the top when collapsed
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1.7,
              centerTitle: true,
              title: _isAppBarCollapsed
                  ? Padding(
                      padding: EdgeInsets.only(top: 16.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 12.w,
                          ),
                          Container(
                            height: 36.h,
                            width: 36.w,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(500.w)),
                            child: Center(
                              child: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Seeker",
                            style: GoogleFonts.sarina(color: Colors.white),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Spacer(),
                          Container(
                            height: 36.h,
                            width: 36.w,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(500.w)),
                            child: Center(
                              child: Icon(
                                Icons.person_2_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12.w,
                          )
                        ],
                      ),
                    )
                  : SizedBox(),
              background: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (!_isAppBarCollapsed) ...[
                    // Only show these when the app bar is expanded
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 12.w,
                                ),
                                Text(
                                  "Location",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12.w, color: Colors.white),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 12.w,
                                ),
                                Text(
                                  "Dwarakanagar, Vizag",
                                  style: GoogleFonts.poppins(
                                      fontSize: 14.w, color: Colors.white),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color: Colors.white,
                                )
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.notifications_active_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 12.w,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                  Padding(
                    padding: EdgeInsets.only(
                        left: 12.w, right: 12.w, bottom: 10.h, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 36.h,
                          width: 288.w,
                          child: TextFormField(
                            controller: controller,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              hintText: "Search by locality",
                              hintStyle: GoogleFonts.poppins(
                                  color: Colors.black, fontSize: 12),
                              fillColor: Colors.white,
                              filled: true,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(40.r),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(40.r),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(40.r),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 36.h,
                          width: 36.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(500.w)),
                          child: Center(
                            child: Icon(Icons.person_2_outlined),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 94.h,
                width: 328.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFFDBF0EE)),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 12.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Our Consultancy",
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 14.w),
                    ),
                    Text(
                      "Most viewed rooms in and around your area",
                      style: GoogleFonts.poppins(
                          color: Colors.grey[800], fontSize: 8.w),
                    )
                  ],
                ),
                Spacer(),
                Text(
                  "See all",
                  style: GoogleFonts.poppins(
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                )
              ],
            ),
            SizedBox(
              height: 185.h,
              child: Padding(
                padding: EdgeInsets.only(left: 7.w, top: 15.h),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ComanTabs();
                    }),
              ),
            ),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Our Consultancy",
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 14.w),
                    ),
                    Text(
                      "Most viewed rooms in and around your area",
                      style: GoogleFonts.poppins(
                          color: Colors.grey[800], fontSize: 8.w),
                    )
                  ],
                ),
                Spacer(),
                Text(
                  "See all",
                  style: GoogleFonts.poppins(
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                )
              ],
            ),
            SizedBox(
              height: 185.h,
              child: Padding(
                padding: EdgeInsets.only(left: 7.w, top: 15.h),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ComanTabs();
                    }),
              ),
            ),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Our Consultancy",
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontSize: 14.w),
                    ),
                    Text(
                      "Most viewed rooms in and around your area",
                      style: GoogleFonts.poppins(
                          color: Colors.grey[800], fontSize: 8.w),
                    )
                  ],
                ),
                Spacer(),
                Text(
                  "See all",
                  style: GoogleFonts.poppins(
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
              ],
            ),
            SizedBox(
              height: 185.h,
              child: Padding(
                padding: EdgeInsets.only(left: 7.w, top: 15.h),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ComanTabs();
                    }),
              ),
            ),
          ])),
        ],
      ),
    );
  }
}
