import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          'EXPLORE',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 15.0,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.black,
          iconSize: 17.0,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.black,
            iconSize: 17.0,
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        children: [
          SizedBox(
            height: 125.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10.0),
              children: [
                Column(
                  children: [
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                        color: Colors.orange,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.add),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(height: 7.0),
                    const Text(
                      'Add to',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                const SizedBox(width: 25.0),
                listItem('assets/chris.jpg', 'Chris', true),
                const SizedBox(width: 25.0),
                listItem('assets/hugh.jpg', 'Hugh', false),
                const SizedBox(width: 25.0),
                listItem('assets/johnnydepp.jpg', 'Depp', false),
                const SizedBox(width: 25.0),
                listItem('assets/tomcruise.jpg', 'Tom', false),
              ],
            ),
          ),
          const SizedBox(height: 15.0),
          firstStyleRow(
            'assets/cone.jpeg',
            'assets/letter.jpeg',
            'assets/chris.jpg',
          ),
          const SizedBox(height: 10.0),
          secondStyleRow(
            'assets/window.jpeg',
            'assets/cactus.jpeg',
            'assets/tomcruise.jpg',
          ),
          const SizedBox(height: 10.0),
          infoRow(),
          const SizedBox(height: 15.0),
          firstStyleRow(
            'assets/cone.jpeg',
            'assets/letter.jpeg',
            'assets/chris.jpg',
          ),
          const SizedBox(height: 10.0),
          secondStyleRow(
            'assets/window.jpeg',
            'assets/cactus.jpeg',
            'assets/tomcruise.jpg',
          ),
          const SizedBox(height: 10.0),
          infoRow(),
          const SizedBox(height: 15.0),
          firstStyleRow(
            'assets/cone.jpeg',
            'assets/letter.jpeg',
            'assets/chris.jpg',
          ),
          const SizedBox(height: 10.0),
          secondStyleRow(
            'assets/window.jpeg',
            'assets/cactus.jpeg',
            'assets/tomcruise.jpg',
          ),
          const SizedBox(height: 10.0),
          infoRow(),
        ],
      ),
    );
  }

  Widget listItem(String imgPath, String name, bool avaiable) {
    return Column(
      children: [
        Container(
          height: 70.0,
          width: 70.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35.0),
            image: DecorationImage(
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 7.0),
        Row(
          children: [
            Text(
              name,
              style: const TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 4.0),
            avaiable
                ? Container(
                    height: 10.0,
                    width: 10.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.orange,
                    ),
                  )
                : Container()
          ],
        )
      ],
    );
  }

  Widget firstStyleRow(String imgPath1, String imgPath2, String avatarImg) {
    return Container(
      height: 250.0,
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Row(
        children: [
          SizedBox(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 30.0) / 2,
            child: Column(
              children: [
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(imgPath1),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 15.0),
                const Text(
                  'I like the way to place Items to show more...',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage(avatarImg),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Mona Hall',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.orange,
                          ),
                        ),
                        Text(
                          '10:51PM',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 10.0),
          SizedBox(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 30.0) / 2,
            child: Container(
              height: 250.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(imgPath2),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget secondStyleRow(String imgPath1, String imgPath2, String avatarImg) {
    return Container(
      height: 250.0,
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      child: Row(
        children: [
          SizedBox(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 30.0) / 2,
            child: Container(
              height: 250.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(imgPath2),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          SizedBox(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 30.0) / 2,
            child: Column(
              children: [
                const Text(
                  'I like the way to place items to show more...',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage(avatarImg),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Mona Hall',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.orange,
                          ),
                        ),
                        Text(
                          '10:51PM',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 42.0),
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: AssetImage(imgPath1),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget infoRow() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: (MediaQuery.of(context).size.width - 30.0) / 2,
            height: 100.0,
            child: Column(
              children: <Widget>[
                const Text(
                  'I like the way to place items to show more...',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: const DecorationImage(
                          image: AssetImage('assets/chris.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Mona Hall',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.orange,
                          ),
                        ),
                        Text(
                          '10:51PM',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 10.0),
          SizedBox(
            width: (MediaQuery.of(context).size.width - 30.0) / 2,
            height: 100.0,
            child: Column(
              children: <Widget>[
                const Text(
                  'I like the way to place items to show more...',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: const DecorationImage(
                          image: AssetImage('assets/tomcruise.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Mona Hall',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.orange,
                          ),
                        ),
                        Text(
                          '10:51PM',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
