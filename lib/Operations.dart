import 'package:flutter/material.dart';

class Operations{
    double? numberOne = null;
    double? numberTwo = null;
    String operations = "";
    
    void multiply(TextEditingController textEditor){
              var displayText = textEditor.text;
              numberOne = (double.parse(displayText));

              textEditor.text = "";
              operations = "*";

    }
}

    