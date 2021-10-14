import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          "Instagram",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Akronim',
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.messenger_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  stories("abc", 'assets/images/img-1.png'),
                  stories("me", 'assets/images/img-2.png'),
                  stories("ave", 'assets/images/img-3.png'),
                  stories("too", 'assets/images/img-4.png'),
                  stories("aaa", 'assets/images/img-5.png'),
                  stories("abca", 'assets/images/img-6.png'),
                  stories("ddd", 'assets/images/img-7.png'),
                ],
              ),
            ),
            header('jianoor', 'karachi', 'assets/images/img-6.png'),
            posts('assets/images/post-3.png', "180 likes"),
            header('abc', 'karachi', 'assets/images/img-3.png'),
            posts('assets/images/post-2.png', "180 likes"),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 45.0,
          width: double.maxFinite,
          decoration: const BoxDecoration(
              color: Colors.black87, borderRadius: BorderRadius.vertical()),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.add_box,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              const CircleAvatar(
                radius: 12.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/images/img-4.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget stories(String name, String story) {
  final borderDecoration = BoxDecoration(
    gradient: LinearGradient(colors: [
      Colors.orangeAccent,
      Colors.red.shade600,
      Colors.redAccent,
      Colors.red.shade500,
    ]),
    borderRadius: BorderRadius.circular(25),
  );
  return SizedBox(
    width: 50,
    child: Column(
      children: [
        Container(
          decoration: borderDecoration,
          padding: const EdgeInsets.all(1.5),
          child: CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.black,
            backgroundImage: AssetImage(story),
          ),
          // ignore: unnecessary_new
        ),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        ),
      ],
    ),
  );
}

Widget header(String name, String loc, String profile) {
  return ListTile(
    leading: CircleAvatar(
      radius: 16.0,
      backgroundColor: Colors.transparent,
      backgroundImage: AssetImage(profile),
    ),
    title: Text(
      name,
      style: const TextStyle(color: Colors.white),
    ),
    subtitle: Text(
      loc,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 10,
      ),
    ),
    trailing: IconButton(
      icon: const Icon(
        Icons.more_vert,
        color: Colors.white,
      ),
      onPressed: () {},
    ),
  );
}

Widget posts(String post, String caption) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        // height: 180,
        // width: 280,
        width: double.maxFinite,
        child: Image.asset(
          post,
          fit: BoxFit.fitWidth,
        ),
      ),
      ListTile(
        title: Row(
          children: [
            SizedBox(
              child: IconButton(
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 35,
              child: IconButton(
                icon: const Icon(
                  Icons.mode_comment_outlined,
                  color: (Colors.white),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 35,
              child: IconButton(
                icon: const Icon(
                  Icons.near_me_outlined,
                  color: (Colors.white),
                ),
                onPressed: () {},
              ),
            ),
            // Icon(Icons.send_outlined,
            // ),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(
            Icons.bookmark_border_sharp,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      Text(
        caption,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
        ),
      ),
    ],
  );
}
