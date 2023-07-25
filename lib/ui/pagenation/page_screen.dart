import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_default_progect/data/model/data_model.dart';

import '../../data/model/universal_data.dart';
import '../../data/network/api_provider.dart';

class PageScreen extends StatefulWidget {
  const PageScreen({Key? key}) : super(key: key);

  @override
  State<PageScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  final TextEditingController queryController = TextEditingController();
  final ScrollController scrollController = ScrollController();

  int currentPage = 20;
  bool isLoading = false;

  List<DataModel> dataModel = [];

  _fetchResult() async {
    setState(() {
      isLoading = true;
    });
    UniversalData universalData = await ApiProvider.getInfoPasssegarInfoByPage(
      page: currentPage,
    );


    if (universalData.error.isEmpty) {
      Airveys airweys = universalData.data as Airveys;
      dataModel.addAll(airweys.model);
      setState(() {});
    }
    currentPage++;

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    _fetchResult();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        _fetchResult();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("object");
    return Scaffold(
      appBar: AppBar(
        title:  Text("Hi"),
      ),
      body: !isLoading ?
        Column(
        children: [
          Expanded(
              child: ListView(
                controller: scrollController,

                children: [

                  ...List.generate(dataModel.length, (index) {
                    DataModel organicModel = dataModel[index];
                    return Container(
                      margin: const EdgeInsets.all(16),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(16)),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(organicModel.namePassager),
                          Text(organicModel.airlanes[0].country),
                          Text(
                            organicModel.airlanes[0].website,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    );
                  }),
                  Visibility(
                    visible: isLoading,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ],
              )
          ),
        ],
      ):

      Center(child: Text("Empty"),)



    );
  }
}
