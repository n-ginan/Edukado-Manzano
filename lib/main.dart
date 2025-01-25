import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const Color finalBackgroundColor = Color.fromRGBO(40, 42, 54, 1.0);
const Color finalFontColor = Color.fromRGBO(255, 249, 102, 1.0);
const Color finalFabColor = Color.fromRGBO(40, 42, 54, 0.5);
const Color finalHintColor = Color.fromRGBO(255, 249, 102, 0.5);

SizedBox spaceBetween(double space) {
  return SizedBox(height: space);
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edukado Manzano',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edukado Manzano'
        ),
          titleTextStyle: const TextStyle(
          fontSize: 24,
          color: finalFontColor,
        ),
        backgroundColor: finalBackgroundColor,
      ),
      backgroundColor: finalBackgroundColor,
      body: ListView(
          children: const <Widget>[
            ListTile(
              title: Text(
                "MIS",
                style: TextStyle(
                    color: finalFontColor
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
              height: 5,
            ),
            ListTile(
              title: Text(
                "Testing",
                style: TextStyle(
                    color: finalFontColor
                ),
              ),
            ),
          ], // Children
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: finalFabColor,
        tooltip: "Increment",
        child: const Icon(
          Icons.add,
          color: finalFontColor,
          size: 50,
        ),
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CreateDeck())
          );
        },
      ),
    );
  }
}

class CreateDeck extends StatelessWidget {
  const CreateDeck({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Deck"),
        iconTheme: const IconThemeData(color: finalFontColor),
        backgroundColor: finalBackgroundColor,
        titleTextStyle: const TextStyle(
          fontSize: 24,
          color: finalFontColor,
        ),
      ),
      backgroundColor: finalBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            deckLabel(),
            spaceBetween(10),
            deckNameTextBox(),
            spaceBetween(60),
            proceedButton(context)
          ],
        ),
      )
    );
  }

  Text deckLabel() {
    return const Text(
      "Enter deck name",
      style: TextStyle(
          color: finalFontColor,
          fontSize: 24,
          fontWeight: FontWeight.bold
      ),
    );
  }

  SizedBox proceedButton(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 400,
      child: ElevatedButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreateCards())
          );
        },
        style: ButtonStyle(
            backgroundColor: const WidgetStatePropertyAll(finalFontColor),
            shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                )
            )
        ),
        child: const Text(
          "Proceed",
          style: TextStyle(
              color: finalBackgroundColor
          ),
        ),
      )
    );
  }

  SizedBox deckNameTextBox() {
    return const SizedBox(
      width: 400,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: finalFontColor,
                  width: 1.5
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: finalFontColor,
                  width: 1.5
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0))
          ),
          hintText: "Deck name",
          focusColor: finalFontColor,
          hintStyle: TextStyle(
              color: finalHintColor
          ),
        ),
        style: TextStyle(
            color: finalFontColor
        ),
      ),
    );
  }

}

class CreateCards extends StatelessWidget {
  const CreateCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Cards"),
        iconTheme: const IconThemeData(color: finalFontColor),
        titleTextStyle: const TextStyle(
          fontSize: 24,
          color: finalFontColor
        ),
        backgroundColor: finalBackgroundColor,
      ),
      backgroundColor: finalBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          spaceBetween(60),
          questionCard(),
          spaceBetween(30),
          answerCards()
        ],
      ),
    );
  }

  Container questionCard() {
    return Container(
      alignment: Alignment.center,
        child: const SizedBox(
      height: 270,
      width: 400,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: finalFontColor
            ),
            borderRadius: BorderRadius.all(Radius.circular(15.0))
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: finalFontColor
            ),
            borderRadius: BorderRadius.all(Radius.circular(15.0))
          ),
          hintText: "Question",
          hintStyle: TextStyle(
            color: finalHintColor,
          )
        ),
        style: TextStyle(
          fontSize: 18,
          color: finalFontColor
        ),
        textAlign: TextAlign.center,
        expands: true,
        minLines: null,
        maxLines: null,
      )
    )
    );
  }

  Container answerCards() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: 170,
      width: 400,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(
          color: finalFontColor,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
    );
  }
}

