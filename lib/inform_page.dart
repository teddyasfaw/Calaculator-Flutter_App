import 'package:flutter/material.dart';

class InformPage extends StatefulWidget {
  const InformPage({super.key});

  @override
  State<InformPage> createState() => _InformPageState();
}

class _InformPageState extends State<InformPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 17, 17, 18),
        body: Column(children: [
          Container(
            width: w,
            height: h * 0.15,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('img/best.jpg'), fit: BoxFit.fill),
            ),
            child: Column(children: [
              SizedBox(
                height: h * 0.03,
              ),
              const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("img/emoji.png"),
              )
            ]),
          ),
          const SizedBox(
            height: 15,
          ),
          RichText(
              text: const TextSpan(children: [
            TextSpan(
              text: "'አራቱ መሰረታዊ የቁጥር ሂሳብ ስሌቶች'",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            )
          ])),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(left: 0, right: 200),
            width: w * 2,
            height: h * 0.04,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                image: const DecorationImage(
                  image: AssetImage('img/y.png'),
                  fit: BoxFit.cover,
                )),
            child: const Center(
              child: Text(
                "መደመር(+)",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 21, 20, 20),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "-ማለት ሁለት ወይም ከዚያ በላይ ቁጥሮችን አንድ ላይ በማጣመር ትልቅ ቁጥር ለመመስረት የሚያስችል መሰረታዊ የሂሳብ አሰራር ነው።",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          const Text(
            "  ለምሳሌ: 3 ፖም ካለህና ተጨማሪ 2 ፖም ከጨመርክ አሁን በአጠቃላይ 5 ፖም አለህ። ይህም እንደ እኩልዮሽ ሊወከል ይችላል፦        3  + 2  = 5 ",
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(left: 0, right: 200),
            width: w * 2,
            height: h * 0.04,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                image: const DecorationImage(
                  image: AssetImage('img/y.png'),
                  fit: BoxFit.cover,
                )),
            child: const Center(
              child: Text(
                "መቀነስ(-)",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 21, 20, 20),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "-ማለት ከስብስብ የማስወገድ ወይም ለመቀነስ ይጠቅማል ።",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          const Text(
            "  ለምሳሌ: 5 ፖም ካለዎት እና 2 ከሰጠህ 3 ፖም ይቀረሃል። ይህም እንደ እኩልዮሽ ሊወከል ይችላል፦                                                    5 - 2  = 3 ",
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(left: 0, right: 200),
            width: w * 2,
            height: h * 0.04,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                image: const DecorationImage(
                  image: AssetImage('img/y.png'),
                  fit: BoxFit.cover,
                )),
            child: const Center(
              child: Text(
                "ማባዛት(X)",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 21, 20, 20),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "-ማለት እኩል መጠን ያላቸው ቡድኖች በተደጋጋሚ መጨመር ማለት ነው።",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          const Text(
            "  ለምሳሌ: እያንዳንዳቸው 3 አይስክሬም ያላቸው 2 ቡድኖች ካሉዎት የአይስ ክሬም ጠቅላላ ቁጥር 3 + 3 = 6 ነው. ይሁን እንጂ በ3 አይስክሬም ሁለት ቡድኖች ጨምረሃል ። እንግዲህ ሶስት አይስክሬምን በሁለት አበዛህ። በተጨማሪም እንደ 2 × 3 = 6 ልትጽፈው ትችላለህ",
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(left: 0, right: 200),
            width: w * 2,
            height: h * 0.04,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                image: const DecorationImage(
                  image: AssetImage('img/y.png'),
                  fit: BoxFit.cover,
                )),
            child: const Center(
              child: Text(
                "ማካፈል(÷)",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 21, 20, 20),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "-ማለት አንድን የተወሰነ መጠን በእኩል ክፍል የመከፋፈል ሂደት ነው።",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          const Text(
            "ለምሳሌ: 16 ን በ 3 እንከፋፍል ። የተረፈው 1 ይሆናል። እዚሁ, ትርፍ = 16, ከፋፋይ = 3, quotient = 5 እና ቀሪው = 1. ስለዚህ                    16 = 3 × 5 + 1",
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ]));
  }
}
