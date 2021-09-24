import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Window 2.0
import QtQml 2.1

Rectangle {
    Rectangle{
        id:optionbar
        width: 320
        height:35
        Row{
            Button {
                text: 'Keypad'
                width: optionbar.width/5
                height: optionbar.height
                onClicked: {
                    load_page(text);
                }
            }
            Button {
                text: 'BitTog'
                width: optionbar.width/5
                height: optionbar.height
                onClicked: {
                    load_page(text);
                }
            }
            Button {
                text: 'QWORD'
                width: optionbar.width/5
                height: optionbar.height
                onClicked: {
                    load_page(text);
                }
            }
            Button {
                text: 'MS'
                width: optionbar.width/5
                height: optionbar.height
                onClicked: {
                    load_page(text);
                }
            }
            Button {
                text: 'M'
                width: optionbar.width/5
                height: optionbar.height
                onClicked: {
                    load_page(text);
                }
            }
        }
    }

    Rectangle{
        id:keyboard
        anchors.top:optionbar.bottom
        width:320
        height: 280
        color:"white"
        Grid {
            columns: 6
            rows:6
            columnSpacing: 0
            rowSpacing: 0
            signal buttonPressed

            Button {id:buttonLsh; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 14; text: "Lsh"}
            Button {id:buttonRsh; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 14; text: "Rsh"}
            Button {id:buttonOr; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 14; text: "Or"}
            Button {id:buttonXor; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 14; text: "Xor"}
            Button {id:buttonNot; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 14; text: "Not"}
            Button {id:buttonAnd; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 14; text: "And"}
            Button {id:buttonUp; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 15; text: "|"}
            Button {id:buttonMod; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 14; text: "Mod"}
            Button {id:buttonCE; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 14; text: "CE"}//; onClicked: resultText.text = ''; }
            Button {id:buttonClear; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 15; text: "C"}//; onClicked: {resultText.text = ''; expressionText.text = '';}}
            Button {id:buttonBackspace; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 14; text: "Back"}
            Button {id:buttonDivide; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17; text: "÷"}

            Button {id:buttonA; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17; text: "A"}
            Button {id:buttonB; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17; text: "B"}
            Button {id:button7; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17; text: "7"}
            Button {id:button8; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17; text: "8"}
            Button {id:button9; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17; text: "9"}
            Button {id:buttonMultiply; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17; text: "x" }
            Button {id:buttonC; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17;text: "C" }
            Button {id:buttonD; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17;text: "D" }
            Button {id:button4; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17;text: "4" }
            Button {id:button5; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17;text: "5"}
            Button {id:button6; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17;text: "6"}
            Button {id:buttonSubtract; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17; text: "-"}

            Button {id:buttonE; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17; text: "E"}
            Button {id:buttonF; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17; text: "F"}
            Button {id:button1; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17; text: "1"}
            Button {id:button2; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17; text: "2"}
            Button {id:button3; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17; text: "3"}
            Button {id:buttonAdd; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17; text: "+"}
            Button {id:buttonOpen; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 15; text: "("}
            Button {id:buttonClose; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 15; text: ")"}
            Button {id:buttonSign; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17; text: "+/-"}
            Button {id:button0; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17; text: "0"}
            Button {id:buttonDot; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 15; text: "."}
            Button {id:buttonEquals; highlighted: true; width: keyboard.width/6;height: keyboard.height/6 ; font.bold: true; font.pixelSize: 17; text: "="}
        }
    }

    property string operation: ''
    property bool checkOperationClicked: false // check "+ - x /" clicked.
    property string checkRadixWhichClicked: "DEC"
    property int checkRadixWhichClickedToCastToCpp: 2
    property string expresstionInput: ''
    //property bool clear: false
    //property string express: ""
    //property int result: 0


    Component.onCompleted: {
        buttonDot.enabled = false;

        if(radix == 10){
            button2.enabled = true; button3.enabled = true;button4.enabled = true; button5.enabled = true;
            button6.enabled = true; button7.enabled = true; button8.enabled = true; button9.enabled = true;

            buttonA.enabled = false; buttonB.enabled = false; buttonC.enabled = false;
            buttonD.enabled = false; buttonE.enabled = false; buttonF.enabled = false;
        }

        mouseHex.clicked.connect(function(){
            checkRadixWhichClicked = "HEX";
            checkRadixWhichClickedToCastToCpp = 1;
            resultText.text = '0';
            expressionText.text = '';
            expresstionInput = '';/////

            number.setCheckRadixWhichClicked(checkRadixWhichClickedToCastToCpp);

            button2.enabled = true; button3.enabled = true; button4.enabled = true; button5.enabled = true;
            button6.enabled = true; button7.enabled = true; button8.enabled = true; button9.enabled = true;
            buttonA.enabled = true;buttonB.enabled = true; buttonC.enabled = true; buttonD.enabled = true;
            buttonE.enabled = true; buttonF.enabled = true;

        });
        mouseDec.clicked.connect(function(){
            checkRadixWhichClicked = "DEC";
            checkRadixWhichClickedToCastToCpp = 2;
            resultText.text = '0';
            expressionText.text = '';
            expresstionInput = '';

            number.setCheckRadixWhichClicked(checkRadixWhichClickedToCastToCpp);

            button2.enabled = true; button3.enabled = true;button4.enabled = true; button5.enabled = true;
            button6.enabled = true; button7.enabled = true; button8.enabled = true; button9.enabled = true;

            buttonA.enabled = false; buttonB.enabled = false; buttonC.enabled = false;
            buttonD.enabled = false; buttonE.enabled = false; buttonF.enabled = false;
        });
        mouseOct.clicked.connect(function(){
            checkRadixWhichClicked = "OCT";
            checkRadixWhichClickedToCastToCpp = 3;
            resultText.text = '0';
            expressionText.text = '';
            expresstionInput = '';

            number.setCheckRadixWhichClicked(checkRadixWhichClickedToCastToCpp);

            button2.enabled = true; button3.enabled = true;button4.enabled = true; button5.enabled = true;
            button6.enabled = true; button7.enabled = true;button8.enabled = false;

            button9.enabled = false; buttonA.enabled = false; buttonB.enabled = false; buttonC.enabled = false;
            buttonD.enabled = false; buttonE.enabled = false; buttonF.enabled = false;
        });
        mouseBin.clicked.connect(function(){
            checkRadixWhichClicked = "BIN";
            checkRadixWhichClickedToCastToCpp = 4;
            resultText.text = '0';
            expressionText.text = '';
            expresstionInput = '';

            number.setCheckRadixWhichClicked(checkRadixWhichClickedToCastToCpp);

            button2.enabled = false; button3.enabled = false;button4.enabled = false;button5.enabled = false;
            button6.enabled = false; button7.enabled = false;button8.enabled = false;button9.enabled = false;
            buttonA.enabled = false; buttonB.enabled = false; buttonC.enabled = false; buttonD.enabled = false;
            buttonE.enabled = false; buttonF.enabled = false;
        });

        button0.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                expresstionInput = '';// reset expresstionInput to start from scratch
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '0';
            else resultText.text += '0';

            number.setNumberInput(parseInt(resultText.text,radix));
            if(resultText.text === '0') {numberHex = 0; numberDec = 0; numberOct = 0; numberBin = 0;}
        });

        button1.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                expresstionInput = '';
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '1';

            number.setNumberInput(parseInt(resultText.text,radix));
        });

        button2.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                expresstionInput = '';
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '2';

            number.setNumberInput(parseInt(resultText.text,radix));
        });

        button3.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                expresstionInput = '';
                checkOperationClicked = false;
            }
            console.log("expresstionInput: ",expresstionInput);

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '3';

            number.setNumberInput(parseInt(resultText.text,radix));
        });

        button4.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                expresstionInput = '';
                checkOperationClicked = false;
            }


            if(resultText.text === '0') resultText.text = '';
            resultText.text += '4';

            number.setNumberInput(parseInt(resultText.text,radix));
        });

        button5.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                expresstionInput = '';
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '5';

            number.setNumberInput(parseInt(resultText.text,radix));
        });

        button6.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                expresstionInput = '';
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '6';

            number.setNumberInput(parseInt(resultText.text,radix));
        });

        button7.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                expresstionInput = '';
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '7';

            number.setNumberInput(parseInt(resultText.text,radix));
        });

        button8.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                expresstionInput = '';
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '8';

            number.setNumberInput(parseInt(resultText.text,radix));
        });

        button9.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                expresstionInput = '';
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += '9';

            number.setNumberInput(parseInt(resultText.text,radix));
        });

        buttonA.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                expresstionInput = '';
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += 'A';

            number.setNumberInput(parseInt(resultText.text,radix));
        });

        buttonB.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                expresstionInput = '';
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += 'B';

            number.setNumberInput(parseInt(resultText.text,radix));
        });

        buttonC.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                expresstionInput = '';
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += 'C';

            number.setNumberInput(parseInt(resultText.text,radix));
        });

        buttonD.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                expresstionInput = '';
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += 'D';

            number.setNumberInput(parseInt(resultText.text,radix));
        });

        buttonE.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                expresstionInput = '';
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += 'E';

            number.setNumberInput(parseInt(resultText.text,radix));
        });

        buttonF.clicked.connect(function(){
            if(checkOperationClicked == true){
                resultText.clear();
                expressionText.clear();
                expresstionInput = '';
                checkOperationClicked = false;
            }

            if(resultText.text === '0') resultText.text = '';
            resultText.text += 'F';

            number.setNumberInput(parseInt(resultText.text,radix));
        });

        buttonLsh.clicked.connect(function(){
            expressionText.text += 'Lsh';
        });
        buttonRsh.clicked.connect(function(){
            expressionText.text += 'Rsh';
        });
        buttonOr.clicked.connect(function(){
            expressionText.text += 'Or';
        });
        buttonXor.clicked.connect(function(){
            expressionText.text += 'Xor';
        });
        buttonNot.clicked.connect(function(){
            expressionText.text += 'Not';
        });
        buttonAnd.clicked.connect(function(){
            expressionText.text += 'And';
        });
        buttonUp.clicked.connect(function(){
            expressionText.text += '|';
        });
        buttonBackspace.clicked.connect(function(){
            resultText.text = resultText.text.substring(0,resultText.cursorPosition - 1);
        });
        buttonOpen.clicked.connect(function(){
            operation = '(';

            if(checkOperationClicked == true) expressionText.clear();

            expressionText.text += resultText.text + " ( ";

            checkOperationClicked = false;
            resultText.clear();
        });
        buttonClose.clicked.connect(function(){
            operation = ')';

            if(checkOperationClicked == true) expressionText.clear();

            expressionText.text += resultText.text + " ) ";

            checkOperationClicked = false;
            resultText.clear();
        });
        buttonSign.clicked.connect(function(){
            resultText.text = -1 * parseFloat(resultText.text);
        });
        buttonDot.clicked.connect(function(){
            //////////expressionText.text += '';
        });
        buttonCE.clicked.connect(function(){
            resultText.text = '0';
            expresstionInput = '';
            numberHex = 0; numberDec = 0; numberOct = 0; numberBin = 0;
        });
        buttonClear.clicked.connect(function(){
            resultText.text = '0';
            expresstionInput = '';
            expressionText.clear();
            result = 0;
            numberHex = 0; numberDec = 0; numberOct = 0; numberBin = 0;
        });

        //////////////////////////////////// "+ - x / %"
        buttonAdd.clicked.connect(function(){
            operation = '+';

            if(checkOperationClicked == true) {
                expressionText.clear();
                expresstionInput = expresstionInput + " + ";
            }else expresstionInput += parseInt(resultText.text, radix) + " + ";
            console.log("expresstionInput: ",expresstionInput);

            expressionText.text += resultText.text + " + ";

            checkOperationClicked = false;
            resultText.clear();
        });
        buttonSubtract.clicked.connect(function(){
            operation = '-'

            if(checkOperationClicked == true) {
                //resultText.clear();
                expressionText.clear();
                expresstionInput = expresstionInput + " - ";
            }else expresstionInput += parseInt(resultText.text, radix) + " - ";
            console.log("expresstionInput: ",expresstionInput);
            expressionText.text += resultText.text + " - ";

            checkOperationClicked = false;
            resultText.clear();
        });
        buttonMultiply.clicked.connect(function(){
            operation = 'x'
            if(checkOperationClicked == true) {
                expressionText.clear();
                expresstionInput = expresstionInput + " * ";
            } else expresstionInput += parseInt(resultText.text, radix) + " * ";
            console.log("expresstionInput: ",expresstionInput);

            expressionText.text += resultText.text + " * ";

            checkOperationClicked = false;
            resultText.clear();
        });
        buttonDivide.clicked.connect(function(){
            operation = '/'

            if(checkOperationClicked == true) {
                expressionText.clear();
                expresstionInput = expresstionInput + " / ";
            }else expresstionInput += parseInt(resultText.text, radix) + " / ";
            console.log("expresstionInput: ",expresstionInput);


            expressionText.text += resultText.text + " / ";

            checkOperationClicked = false;
            resultText.clear();
        });
        buttonMod.clicked.connect(function(){
            operation = '%'

            if(checkOperationClicked == true) {
                expressionText.clear();
                expresstionInput = expresstionInput + " % ";
            }else expresstionInput += parseInt(resultText.text, radix) + " % ";
            //console.log("expresstionInput: ",expresstionInput);

            expressionText.text += resultText.text + " % ";

            checkOperationClicked = false;
            resultText.clear();
        });

        ////// BEGIN OPERATOR PRECEDENCE
        function infixToPostfix(input) {
            let stack = [], answer = [];
            let charNew;
            const operands = {
                '+': 1,
                '-': 1,
                "*": 2,
                "/": 2,
                "%": 2,
            };

            for ( charNew of input.split(' ')) { //1 + 3 * 2
                let currentPrecedence = operands[charNew];
                //console.log("infixToPostfix, currentPrecedence: ", currentPrecedence);

                //console.log(charNew);
                if (currentPrecedence) {
                    //console.log("currentPrecedence: ", currentPrecedence);
                    let peek = operands[stack[stack.length - 1]];
                    // pop until the peek is smaller
                    while (peek >= currentPrecedence) {
                        answer.push(stack.pop());
                        peek = operands[stack[stack.length - 1]];
                    }
                    stack.push(charNew);
                } else { // not operand, push to answer
                    answer.push(charNew);
                }
            }
            while (stack.length > 0) {
                answer.push(stack.pop())
            }
            return answer.join(' ');
        }

        function executePostfix(str) {
            let stack = [], operand1, operand2, tempOperand;
            let operators = ['+', '-', '*', '/', '%'];

            for (let charNew of str.split(' ')) {// 1
                //console.log("executePostfix: charNew", charNew);
                if (operators.indexOf(charNew) >= 0) {
                    //console.log("charNew: ", charNew);
                    // operate
                    operand2 = stack.pop();
                    operand1 = stack.pop();
                    tempOperand = eval(operand1 + charNew + operand2);
                    stack.push(tempOperand);
                } else {
                    stack.push(charNew);
                }
            }

            return stack.pop();
        }
        ////// END OPERATOR PRECEDENCE

        buttonEquals.clicked.connect(function(){
            console.log("radixxx: %d",radix);
            if(checkOperationClicked == true){
                //expressionText.clear();
                return 0;// to Solve the problem when clicking multiple signs '=' in a row
            }

            if(operation === ''){
                expressionText.text += parseInt(resultText.text, radix) + "=";
            }
            expresstionInput += parseInt(resultText.text, radix);
            console.log("CalulatorPage,expresstionInput: ", expresstionInput);
            expressionText.text += resultText.text ;

            let expresstion =  infixToPostfix(expresstionInput);
            let answer = executePostfix(expresstion);
            expresstionInput = answer;/////

            console.log("CalulatorPage, infixToPostfix, expresstion: ", expresstion);
            console.log("CalulatorPage, executePostfix, answer: ", answer);

            number.setNumberInput(answer);
            if(checkRadixWhichClicked == "HEX"){
                resultText.text = numberHex;
            }else if(checkRadixWhichClicked == "DEC"){
                resultText.text = numberDec;
            }else if(checkRadixWhichClicked == "OCT"){
                resultText.text = numberOct;
            }else if(checkRadixWhichClicked == "BIN"){
                resultText.text = numberBin;
            }
            checkOperationClicked = true;
        });
    }
}
