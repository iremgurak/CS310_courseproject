import 'package:flutter/material.dart';

class ActivityFeed extends StatefulWidget {
  const ActivityFeed({Key? key}) : super(key: key);

  @override
  _ActivityFeedState createState() => _ActivityFeedState();
}
String messageTitle = "Empty";
String notificationAlert = "alert";
String title = "title";
class _ActivityFeedState extends State<ActivityFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF7CC0FF),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title:
        const Align(
          alignment: Alignment.center,

          child: Text(
            "Notifications",
            style: TextStyle(
              fontFamily: "Signatra",
              fontSize: 50.0,
              color: Colors.white,
            ),
          ),
        ),
      ),

      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(height: 30),
              Container(
                alignment: FractionalOffset.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey,
                ),
                width: 900,
                height: 40,
                child: Align(
                  alignment: Alignment.centerLeft,

                  child: Text(
                    "  Murat Can shared a new post!",
                    style: TextStyle(
                      color:Colors.black,
                      fontSize:20,
                      leadingDistribution: TextLeadingDistribution.even,
                    ),),
                ),
              ),
              Container(height: 30),
              Container(
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(10),
                    color:Colors.blueGrey
                ),
                width: 900,
                height: 40,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "  Mary liked your post!",
                    style: TextStyle(
                      color:Colors.black,
                      fontSize:20,
                      leadingDistribution: TextLeadingDistribution.even,
                    ),),
                ),
              ),
              Container(height: 30),
              Container(
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(10),
                    color:Colors.blueGrey
                ),
                width: 900,
                height: 40,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "  İrem shared a new post!",
                    style: TextStyle(
                      color:Colors.black,
                      fontSize:20,
                      leadingDistribution: TextLeadingDistribution.even,
                    ),),
                ),
              ),
              Container(height: 30),
              Container(
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(10),
                    color:Colors.blueGrey
                ),
                width: 900,
                height: 40,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " Oğuzhan liked your post!",
                    style: TextStyle(
                      color:Colors.black,
                      fontSize:20,
                      leadingDistribution: TextLeadingDistribution.even,
                    ),),
                ),
              ),
              Container(height: 30),
              Container(
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(10),
                    color:Colors.blueGrey
                ),
                width: 900,
                height: 40,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " Serdar shared a new post!",
                    style: TextStyle(
                      color:Colors.black,
                      fontSize:20,
                      leadingDistribution: TextLeadingDistribution.even,
                    ),),
                ),
              )
            ],
          )
      ),
    );
  }
}

class ActivityFeedItem extends StatelessWidget {
  const ActivityFeedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Activity Feed Item');
  }
}