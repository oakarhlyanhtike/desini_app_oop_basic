import 'package:desini_app/story_barin.dart';
import 'package:flutter/material.dart';

StroyBrain stroyBrain = StroyBrain();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'images/background.png',
                ),
                fit: BoxFit.cover)),
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    stroyBrain.getStroy(),
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: FlatButton(
                    onPressed: () {
                     
                      setState(() {
                        stroyBrain.nextStory(1);
                      });
                    },
                    color: Colors.red,
                    child: Text(
                     

                      stroyBrain.getChoice1(),
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                  flex: 2,
                  //TODO: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                  //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                  child: Visibility(
                   visible: stroyBrain.buttonShouldBeVisible(),

                    child: FlatButton(
                      onPressed: () {
                        
                        setState(() {
                          
                          stroyBrain.nextStory(2);
                        });
                      },
                      child: Text(
                        
                        stroyBrain.getChoice2(),
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      color: Colors.blue,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
  //TODO: Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.

//TODO: Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/

}
