import 'package:flutter/material.dart';
import 'package:my_default_progect/provider/user_provider.dart';
import 'package:provider/provider.dart';

class UserInfoScreen extends StatelessWidget {
  const UserInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("users id and info"),
      ),
      body: Column(
        children: [
          Consumer<UserProvider>(
            builder: (context, userProvider, child) {
              print(userProvider.isLoading);
              if (userProvider.isLoading) {
                return Center(
                      child: CircularProgressIndicator(),
                    );
              } else {
                return Expanded(
                  child: ListView.builder(
                        itemCount: userProvider.mainModelUser?.length,
                        itemBuilder: (context,int index){
                          var user = userProvider.mainModelUser;
                          return Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.teal
                            ),
                            height: 100,
                            child: Center(
                              child: ListTile(
                                leading:Text(user?[index].id.toString() ?? '',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                                title: Text(user?[index].title ?? '',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                                subtitle:  Text(user?[index].userId.toString() ?? '',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                              ),
                            ),
                          );
                        }),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
