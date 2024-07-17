import 'package:flutter/material.dart';

class Operations{
    double? numberOne = null;
    double? numberTwo = null;
    String operations = "";
    double? value = null;
    
    void multiply(TextEditingController textEditor){
              var displayText = textEditor.text;
              numberOne = (double.parse(displayText));

              textEditor.text = "";
              operations = "*";

    }

    void addition(TextEditingController textEditor){
              var displayText = textEditor.text;
              numberOne = (double.parse(displayText));

              textEditor.text = "";
              operations = "+";

    }
    void subtraction(TextEditingController textEditor){
              var displayText = textEditor.text;
              numberOne = (double.parse(displayText));

              textEditor.text = "";
              operations = "-";

    }
    void divide(TextEditingController textEditor){
              var displayText = textEditor.text;
              numberOne = (double.parse(displayText));

              textEditor.text = "";
              operations = "/";

    }


    void equal(TextEditingController textEditor){
              var displayText = textEditor.text;
              numberTwo = (double.parse(displayText));

              if(operations == "*"){
               value = numberOne! * numberTwo!;
              }else if(operations == "+"){
                 value = numberOne! + numberTwo!;
              }else if(operations == "-"){
                 value = numberOne! - numberTwo!;
              }else if(operations == "/"){
                 value = numberOne! / numberTwo!;
              }
              textEditor.text = value.toString();

    }
}

    