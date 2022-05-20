import 'package:flutter/material.dart';
import 'package:social_media_app/widgets/following_user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Frenzy".toUpperCase(),
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 10.0,
              color: Colors.blue),
        ),
        bottom: TabBar(
            indicatorWeight: 3.0,
            labelColor: Colors.blue,
            labelStyle:
                const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            controller: _tabController,
            unselectedLabelStyle: const TextStyle(fontSize: 16),
            tabs: const [
              Tab(
                text: "Trending",
              ),
              Tab(
                text: "Latest",
              )
            ]),
      ),
      body: ListView(children: [FollowingUser()]),
    );
  }
}
