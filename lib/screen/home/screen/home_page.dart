import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:toolify/app/cube_timer/cube_timer.dart';
import 'package:toolify/screen/home/widgets/home_page_text.dart';
import '../../../app/age_calculate/age_calculator.dart';
import '../../../app/barcode_generate/barcode_generate.dart';
import '../../../app/bmi_calculetor/bmi_calculetor.dart';
import '../../../app/countdown_timer/countdown_timer.dart';
import '../../../app/plant_identify/plant_identify.dart';
import '../../../app/qr_generate/qr_generate.dart';
import '../widgets/home_page_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('191a1f'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomePageText(text: 'Random Apps'),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                ),
                delegate: SliverChildListDelegate(
                  [
                    const HomePageCard(
                      image: 'https://i.postimg.cc/sfmXjh3Q/plant.png',
                      text: 'Plant Find',
                      location: PlantIdentifier(),
                    ),
                    const HomePageCard(
                      image: 'https://i.postimg.cc/jScWH1JR/qr-code-gen.png',
                      text: 'Qr Generate',
                      location: QrGenerate(),
                    ),
                    const HomePageCard(
                      image: 'https://i.postimg.cc/7hhxhZDp/barcode.png',
                      text: 'BarCode Generate',
                      location: BarcodeGenerate(),
                    ),
                    const HomePageCard(
                      image: 'https://i.postimg.cc/59Xq1TPH/timer2.png',
                      text: 'Timer',
                      location: TimerApp(),
                    ),
                    const HomePageCard(
                      image: 'https://i.postimg.cc/wvQ7KSMG/countdown.png',
                      text: 'Countdown Timer',
                      location: CountdownTimer(),
                    ),
                    const HomePageCard(
                      image: 'https://i.postimg.cc/hvhn8LM2/age-cal.png',
                      text: 'Age Calculator',
                      location: AgeCalculator(),
                    ),
                    const HomePageCard(
                      image: 'https://i.postimg.cc/QMWYLmrh/bmi.png',
                      text: 'BMI Calculator',
                      location: BMICalculatorScreen(),
                    ),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    HomePageText(text: 'Product'),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                ),
                delegate: SliverChildListDelegate([
                  const HomePageCard(
                    image: 'https://i.postimg.cc/QMWYLmrh/bmi.png',
                    text: 'BMI Calculetor',
                    location: HomePage(),
                  ),
                  const HomePageCard(
                    image: 'https://i.postimg.cc/QMWYLmrh/bmi.png',
                    text: 'BMR Calculeror',
                  ),
                  const HomePageCard(
                    image: 'https://i.postimg.cc/QMWYLmrh/bmi.png',
                    text: 'Age Calculetor',
                  ),
                  const HomePageCard(
                    image: 'https://i.postimg.cc/QMWYLmrh/bmi.png',
                    text: 'Tip Calculetor',
                  ),
                  const HomePageCard(
                    image: 'https://i.postimg.cc/QMWYLmrh/bmi.png',
                    text: 'Profit Calculetor',
                  ),
                  const HomePageCard(
                    image: 'https://i.postimg.cc/QMWYLmrh/bmi.png',
                    text: 'Profit Calculetor',
                  ),
                  const HomePageCard(
                    image: 'https://i.postimg.cc/QMWYLmrh/bmi.png',
                    text: 'Profit Calculetor',
                  ),
                  const HomePageCard(
                    image: 'https://i.postimg.cc/QMWYLmrh/bmi.png',
                    text: 'Profit Calculetor',
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
