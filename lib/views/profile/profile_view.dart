import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:famlicious_app/views/auth/login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../managers/post_manager.dart';
import '../auth/welcome.dart';

class ProfileView extends StatelessWidget {
  ProfileView({Key? key}) : super(key: key);
  final PostManager _postManager = PostManager();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;



  @override
  Widget build(BuildContext context) {
    String userUid = _firebaseAuth.currentUser!.uid;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Profile'),
        actions: [
          // TextButton.icon(
          // onPressed: () {
          //     print(_firebaseAuth.currentUser!.uid);
          //     },
          //         icon: const Icon(UniconsLine.university),
          //         label: const Text('info')
          //           ),
          TextButton.icon(
              onPressed: () async {
                await FirebaseAuth.instance.signOut().then((value) =>
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => const Welcome()),
                        (route) => false));
              },
              icon: const Icon(UniconsLine.exit),
              label: const Text('Logout'))
        ],
      ),
      body: Column (

      children: [Card(
          elevation: 0,
          color: Theme.of(context).cardColor,
          margin: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StreamBuilder<Map<String, dynamic>?>(
                    stream: _postManager
                        .getUserInfo(userUid)
                        .asStream(),
                    builder: (context, userSnapshot) {
                      if (userSnapshot.connectionState ==
                          ConnectionState.waiting &&
                          userSnapshot.data == null) {
                        return const Center(
                            child:
                            LinearProgressIndicator());
                      }

                      if (userSnapshot.connectionState ==
                          ConnectionState.done &&
                          userSnapshot.data == null) {
                        return const ListTile();
                      }
                      return ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              userSnapshot.data!['picture']!),
                        ),
                        title: Text(userSnapshot.data!['name'],
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                        subtitle: Text(
                            "BIO",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey)),
                        trailing: IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.settings,
                              color:
                              Theme.of(context).iconTheme.color,
                            )),

                      );
                    }),

              ],
            ),
          ),
      ),
      ]
    ));
  }
}
