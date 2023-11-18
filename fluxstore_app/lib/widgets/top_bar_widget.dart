import 'package:flutter/material.dart';
import 'package:fluxstore_app/utils/colors.dart';

class TopBarWidget extends StatefulWidget  {
  const TopBarWidget({super.key});
  
  @override
  State<StatefulWidget> createState() => _TopBarWidgetState();



}

class _TopBarWidgetState extends State<TopBarWidget> with TickerProviderStateMixin {

  late final TabController _tabController = TabController(length: 4, vsync: this);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TabBar(
        splashFactory: NoSplash.splashFactory,
        isScrollable: true,
        overlayColor: MaterialStateProperty.all(Colors.transparent),
        labelColor: selectedTabColor,
        unselectedLabelColor: unselectedTabColor,
        dividerColor: selectedTabColor,
        indicatorColor: selectedTabColor,
        controller: _tabController,
        tabs: const <Widget>[
          Tab(text: "All Type"),
          Tab(text:"Full Body"),
          Tab(text:"Upper"),
          Tab(text:"Lower"),
        ]),
    );
  }

}