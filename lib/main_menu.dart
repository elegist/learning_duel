import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

final ButtonStyle menuButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black,
  primary: Colors.grey[300],
  minimumSize: Size(300, 60),
  padding: EdgeInsets.symmetric(horizontal: 20),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
);

String username = "Username";
String myProfIsAGamerIcon = "assets/images/myProfIsAGamerIcon.png";
String profilePicture = myProfIsAGamerIcon;

class MainMenu extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(username,
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30.0,
                    horizontal: 10.0,
                  ),
                  child: InkWell(
                    onTap: () {}, // Handle your callback.
                    splashColor: Colors.blue.withOpacity(0.5),
                    customBorder: CircleBorder(),
                    child: Ink(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(profilePicture),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Learning Duel",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(width: 300.0, height: 50.0),
                ElevatedButton(
                  style: menuButtonStyle,
                  onPressed: () { },
                  child: Text("Start a Duel",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  style: menuButtonStyle,
                  onPressed: () { },
                  child: Text("Manage Cards",
                      style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("My Prof Is A Gamer",
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 10.0,
                  ),
                  child: InkWell(
                    onTap: () {}, // Handle your callback.
                    splashColor: Colors.blue.withOpacity(0.5),
                    customBorder: CircleBorder(),
                    child: Ink(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(myProfIsAGamerIcon),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
