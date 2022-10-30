import 'package:f_calculator/cal_buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String calsum = '0';
  String calanswer = '0';
  String expression = '';
  double calsumFontsize = 38.00;
  double calanswerFontsize = 48.00;

  List calButtons = [
    'C',
    '÷',
    '%',
    '⌫',
    '9',
    '8',
    '7',
    '×',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '.',
    '0',
    '00',
    '=',
  ];

  void calBtnClick(String calbtntext) {
    print(calbtntext);

    setState((){
      if (calbtntext == 'C') {
        calsum = '0';
        calanswer = '0';
        calsumFontsize = 38.0;
        calanswerFontsize = 48.0;
      }

      else if (calbtntext == '⌫') {
        calsumFontsize = 48.0;
        calanswerFontsize = 38.0;
        calsum = calsum.substring(0,calsum.length-1);
        if(calsum == '0')
        {
          calsum = '0';
        }
      }

      else if (calbtntext == '=') {
        calsumFontsize = 38.0;
        calanswerFontsize = 48.0;

        expression = calsum;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll('÷', '/');
        try
        {
          Parser p = new Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          calanswer = '${exp.evaluate(EvaluationType.REAL, cm)}';
        }
        catch(e) {
          calanswer = " ";
        }
      }

      else {
        calsumFontsize = 48.0;
        calanswerFontsize = 38.0;
        if(calbtntext == '0')
        {
          calsum = calsum + calbtntext;
        }
        else{
          calsum = calsum + calbtntext;
        };
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown.shade50,
        body: SafeArea(
            child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          calsum,
                          style: TextStyle(fontSize: calsumFontsize),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(),
                        Text(
                          calanswer,
                          style: TextStyle(fontSize: calanswerFontsize),
                        ),
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 2,
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CButtons(
                            buttonText: calButtons[0],
                            color: Color(0xff562B08),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                          CButtons(
                            buttonText: calButtons[1],
                            color: Color(0xff562B08),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                          CButtons(
                            buttonText: calButtons[2],
                            color: Color(0xff562B08),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                          CButtons(
                            buttonText: calButtons[3],
                            color: Color(0xff562B08),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CButtons(
                            buttonText: calButtons[4],
                            color: Color(0xff965104),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                          CButtons(
                            buttonText: calButtons[5],
                            color: Color(0xff965104),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                          CButtons(
                            buttonText: calButtons[6],
                            color: Color(0xff965104),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                          CButtons(
                            buttonText: calButtons[7],
                            color: Color(0xff562B08),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CButtons(
                            buttonText: calButtons[8],
                            color: Color(0xff965104),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                          CButtons(
                            buttonText: calButtons[9],
                            color: Color(0xff965104),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                          CButtons(
                            buttonText: calButtons[10],
                            color: Color(0xff965104),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                          CButtons(
                            buttonText: calButtons[11],
                            color: Color(0xff562B08),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CButtons(
                            buttonText: calButtons[12],
                            color: Color(0xff965104),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                          CButtons(
                            buttonText: calButtons[13],
                            color: Color(0xff965104),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                          CButtons(
                            buttonText: calButtons[14],
                            color: Color(0xff965104),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                          CButtons(
                            buttonText: calButtons[15],
                            color: Color(0xff562B08),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CButtons(
                            buttonText: calButtons[16],
                            color: Color(0xff965104),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                          CButtons(
                            buttonText: calButtons[17],
                            color: Color(0xff965104),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                          CButtons(
                            buttonText: calButtons[18],
                            color: Color(0xff965104),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                          CButtons(
                            buttonText: calButtons[19],
                            color: Color(0xff562B08),
                            textColor: Colors.white,
                            callbtn: calBtnClick,
                          ),
                        ],
                      ),
                    ],
                  ),
                ))),
          ],
        )));
  }
}
