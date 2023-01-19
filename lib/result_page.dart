import 'package:flutter/material.dart';

import 'bottom_bar.dart';
import 'constants.dart';
import 'reusable_card.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
    required this.resultBMI,
    required this.resultText,
    required this.resultInterpretation,
  });

  final String resultBMI;
  final String resultText;
  final String resultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Your Result', style: kResultTitleTextStyle),
            ),
            Expanded(
              child: ReusableCard(
                color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText.toUpperCase(),
                        style: kResultHeaderTextStyle),
                    Text(resultBMI, style: kResultNumberTextStyle),
                    Text(resultInterpretation,
                        textAlign: TextAlign.center,
                        style: kResultDescTextStyle),
                  ],
                ),
              ),
            ),
            BottomBar(
              title: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}
