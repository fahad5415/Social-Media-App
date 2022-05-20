import 'package:flutter/material.dart';
import 'package:social_media_app/data/data.dart';
import 'package:social_media_app/model/user_model.dart';

class FollowingUser extends StatefulWidget {
  @override
  State<FollowingUser> createState() => _FollowingUserState();
}

class _FollowingUserState extends State<FollowingUser> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              "Following",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
          ),
          Expanded(
            child: Container(
              height: 80,
              color: Colors.red,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: users.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    User user = users[index];
                    return Container(
                      height: 60,
                      width: 60,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6.0,
                                offset: Offset(0, 2))
                          ],
                          border: Border.all(width: 2.0, color: Colors.blue),
                          shape: BoxShape.circle),
                      child: Image(
                        height: 60,
                        width: 60,
                        image: AssetImage(user.profileImageUrl),
                        fit: BoxFit.cover,
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
