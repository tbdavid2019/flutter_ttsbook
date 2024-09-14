import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:shake/shake.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Bible Verses App',
      home: BibleVersePage(),
    );
  }
}

class BibleVersePage extends StatefulWidget {
  const BibleVersePage({Key? key}) : super(key: key);

  @override
  State<BibleVersePage> createState() => _BibleVersePageState();
}

class _BibleVersePageState extends State<BibleVersePage> {
  String currentVerse = '';
  final FlutterTts flutterTts = FlutterTts();
  late ShakeDetector detector;

  final List<String> verses = [
    'https://bible-api.com/john 3:16',
    'https://bible-api.com/genesis 1:1',
    'https://bible-api.com/psalms 23:1',
  ];

  @override
  void initState() {
    super.initState();
    fetchRandomVerse();
    
    detector = ShakeDetector.autoStart(
      onPhoneShake: () {
        fetchRandomVerse();
      },
      minimumShakeCount: 1,
      shakeSlopTimeMS: 500,
      shakeCountResetTime: 3000,
    );
  }

  Future<void> fetchRandomVerse() async {
    final randomIndex = Random().nextInt(verses.length);
    final response = await http.get(Uri.parse(verses[randomIndex]));

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      setState(() {
        currentVerse = jsonResponse['text'];
      });
    } else {
      setState(() {
        currentVerse = 'Failed to load verse';
      });
    }
  }

  Future<void> speakVerse() async {
    await flutterTts.speak(currentVerse);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bible Verse'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: InkWell(
            onTap: speakVerse,
            splashColor: Colors.blue.withOpacity(0.3),
            highlightColor: Colors.blue.withOpacity(0.1),
            child: Text(
              currentVerse,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    detector.stopListening();
    super.dispose();
  }
}