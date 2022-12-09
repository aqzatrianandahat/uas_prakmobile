import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _homeState();
}

class _homeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/Moon HD.png",
      "assets/images/Nebula.png",
      "assets/images/Spacewalk.png",
      "assets/images/Spacewalk 2.png",
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 196, 196, 196),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 73, 79, 115),
        elevation: 0,
        title: const Text(
          'HOME',
          style: TextStyle(
            color: Color.fromARGB(255, 245, 246, 248),
            fontFamily: 'Poppins SemiBold',
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search,
                color: Color.fromARGB(255, 245, 246, 248)),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Align(
                      child: Image(image: AssetImage("assets/images/Logo Name.png"),
                      )
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Color.fromARGB(255, 169,155,146),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Trending',
                            style: TextStyle(
                              color: Color.fromARGB(255, 245, 246, 248),
                              fontFamily: 'Poppins SemiBold',
                              fontSize: 18,
                            ),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 73, 79, 115),

              ),
              child:
              Image(image: AssetImage("images/aqzaprofile.jpg"), fit: BoxFit.cover),
              // accountName : Text("Aqza Tri Ananda HAT"),
              // accountEmail: Text("aqzatrianandahat@gmail.com"),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: const Text('HOME'),
                onTap: () => print('Tap Trash menu')),

            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Navigator.pop(context);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => settingpage(setTheme: setTheme),
                //     ));
              },
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: const Text('Description'),
              onTap: () {
                // Navigator.pop(context);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => homedetail(),
                //     ));
              },
            ),
            new Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              trailing: new Icon(Icons.cancel),
              title: const Text('LOGOUT'),
              onTap: () {

                // Navigator.pushReplacement(context,
                //   MaterialPageRoute(builder: (context) => LoginScreen(setTheme: setTheme)),);
              },
            ),
          ],
        ),
      ),
    );
  }
}
