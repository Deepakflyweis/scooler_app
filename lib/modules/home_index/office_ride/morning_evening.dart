
import 'package:flutter/material.dart';
import 'package:scooler_app/utils/app_color/app_color.dart';

class RouteOffice extends StatefulWidget {
  const RouteOffice({Key? key}) : super(key: key);

  @override
  State<RouteOffice> createState() => _RouteOfficeState();
}

class _RouteOfficeState extends State<RouteOffice> with SingleTickerProviderStateMixin {

  late TabController _tabController;


  @override
  void initState() {
    _tabController =   TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
       backgroundColor: bckgroundclr,
       appBar: AppBar(
         backgroundColor: whiteclr,
        bottom: TabBar(
          unselectedLabelColor: Colors.black,
          indicatorColor: btnclr,
          indicatorWeight:  5.0,
           labelColor: btnclr,
          indicatorSize: TabBarIndicatorSize.tab ,
          controller: _tabController,
          tabs: const [
            Tab(text: 'Morning',),
            Tab(text: 'Evening',)
          ],
        ),
       ),
       body: SingleChildScrollView(
         child: Column(
           children: [],
         ),
       )
      ),
    );
  }
}
