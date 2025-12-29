import 'package:flutter/material.dart';
import 'package:grade_b_museum/screen/museum_main_screen.dart';
import 'package:grade_b_museum/etc/etc.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  double dragOffset = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              width: width,
              height: height,
              child: _buildIntroPage(context),
            ),
            SizedBox(
                width: width,
                child: const WhyPage()
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIntroPage(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Grade B Museum",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Grade B Museum은 실무에서 고려되지 않는 구현을 "
                      "의도적으로 끝까지 구현해 전시하는 공간입니다.\n\n"
                      "이곳의 전시물은 효율을 목표로 하지 않으며, "
                      "문제를 해결하지도 않습니다.",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 36),

                GestureDetector(
                  onTap: () {
                    etc.showSnackBar("입장하려면 화살표 방향으로 드래그하세요", context);
                  },
                  onHorizontalDragUpdate: (details) {
                    if (details.primaryDelta == null) return;

                    if (details.primaryDelta! > 0) {
                      setState(() {
                        dragOffset += details.primaryDelta!;
                      });

                      if (dragOffset >= 350) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MuseumMainScreen(),
                          ),
                        );
                      }
                    }
                  },
                  onHorizontalDragEnd: (_) {
                    setState(() {
                      dragOffset = 0;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 50),
                    transform: Matrix4.translationValues(dragOffset, 0, 0),
                    child: Container(
                      width: 140,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "입장 하기 →",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WhyPage extends StatelessWidget {
  const WhyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 80),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Grade-B Museum",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                // ... (나머지 텍스트 내용은 동일) ...
                SizedBox(height: 16),
                Text(
                  "쓸데없는 기능들을 진지하게 구현한 개인 실험 프로젝트입니다.",
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
                SizedBox(height: 32),
                Text(
                  "Grade-B Museum은 실용성을 의도적으로 배제한 기능들을\n"
                      "‘전시물’이라는 형태로 구현하는 개인 프로젝트입니다.\n\n"
                      "이 프로젝트의 목적은 문제 해결이 아니라,\n"
                      "불필요한 기능을 얼마나 정교하게 설계하고 구현할 수 있는지를\n"
                      "연습하고 공유하는데 있습니다\n\n",
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.7,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 48),
                Text(
                  "Philosophy",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  "- 이 프로젝트는 문제를 해결하지 않습니다\n"
                      "- 실무에서는 만들지 않을 기능을 일부러 설계합니다\n"
                      "- 하나의 전시물은 하나의 아이디어만 담습니다\n"
                      "- 구현의 완성도만은 최선을 다해 실무에서 사용 가능할 정도를 지향합니다\n\n",
                  style: TextStyle(
                    fontSize: 17,
                    height: 1.6,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 48),
                Text(
                  "Project Status",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  "- 이 프로젝트는 완성형이 아닌 지속적으로 확장되는 전시관입니다\n"
                      "- 심심할 때마다 새로운 전시가 추가됩니다",
                  style: TextStyle(
                    fontSize: 17,
                    height: 1.6,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 48),
                Text(
                  "Open Source Policy",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  "이 프로젝트는 연습용이자 심심풀이로 진행되는 개인 프로젝트입니다.\n"
                      "따라서 코드 기여(PR)는 받지 않습니다.\n\n"
                      "다만, 전시 아이디어 제안은 Github Issue로 환영합니다.",
                  style: TextStyle(
                    fontSize: 17,
                    height: 1.6,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 64),
                Text(
                  "Contact Me",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  "Email: jung@siyoung.dev\n"
                      "Phone: 010-2130-7824\n"
                      "Portfolio: https://siyoung.dev",
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.6,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}