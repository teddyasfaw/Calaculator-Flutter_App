import 'package:calculator1_app/youtube_player_custom_subtitles.dart';
import 'package:flutter/material.dart';
import 'inform_page.dart';
import 'signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    //double h = MediaQuery.of(context).size.height;
    return Material(
        child: Container(
      padding: const EdgeInsets.only(top: 100, bottom: 40),
      decoration: const BoxDecoration(
          color: Color.fromARGB(221, 240, 233, 233),
          image: DecorationImage(
            image: AssetImage("img/best.jpg"),
            fit: BoxFit.fill,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 5,
          ),
          Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              InkWell(
                splashColor: Colors.black,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpPage(),
                    ),
                  );
                },
                child: Ink(
                    child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 177, 171, 53),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: const Text('ኳልኩሌተር📲',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      )),
                )),
              ),
              const SizedBox(
                height: 5,
              ),
              InkWell(
                splashColor: Colors.black,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InformPage(),
                    ),
                  );
                },
                child: Ink(
                    child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 177, 171, 53),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: const Text('የሂሳብ ስሌቶች ለማወቅ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      )),
                )),
              ),
              const SizedBox(
                height: 5,
              ),
              InkWell(
                splashColor: Colors.black,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const YoutubePlayerCustomSubtitle(),
                    ),
                  );
                },
                child: Ink(
                    child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 177, 171, 53),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: const Text('የኢትዬጲያ ቁጥሮች ለማወቅ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      )),
                )),
              ),
              SizedBox(
                height: w * 0.01,
              ),
            ],
          )
        ],
      ),
    ));
  }
}
