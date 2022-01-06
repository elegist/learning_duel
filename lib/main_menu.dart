import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learning_duel/user_settings_menu.dart';
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

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MainMenuState extends State<MainMenu> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
//  final userNameController = TextEditingController(text: globals.username);

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    globals.userNameController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    //globals.storage.loadUserSettings();
  }

  @override
  Widget build(BuildContext context) {
    //globals.storage.loadUsername();
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
                Text(globals.userSettings.userName,
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30.0,
                    horizontal: 10.0,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UserSettingsMenu()),
                      ).whenComplete((){setState(() { });});
                    },
                    splashColor: Colors.blue.withOpacity(0.5),
                    customBorder: CircleBorder(),
                    child: Ink(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(globals.userSettings.profilePicture),
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
