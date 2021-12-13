import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'globals.dart' as globals;

final ButtonStyle menuButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black,
  primary: Colors.grey[300],
  minimumSize: Size(300, 60),
  padding: EdgeInsets.symmetric(horizontal: 20),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
);

class UserSettingsMenu extends StatefulWidget {
  const UserSettingsMenu({Key? key}) : super(key: key);

  @override
  _UserSettingsMenuState createState() => _UserSettingsMenuState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _UserSettingsMenuState extends State<UserSettingsMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30.0,
                    horizontal: 10.0,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    }, // Handle your callback.
                    splashColor: Colors.blue.withOpacity(0.5),
                    child: Icon(
                      Icons.home,
                      size: 50.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("User Settings",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(width: 300.0, height: 50.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child:
                  TextFormField(
                    controller: globals.userNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter your user name:",
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  style: menuButtonStyle,
                  onPressed: () {
                    globals.storage.saveUsername();
                  },
                  child: Text("Save user name",
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
                          image: AssetImage(globals.myProfIsAGamerIcon),
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
