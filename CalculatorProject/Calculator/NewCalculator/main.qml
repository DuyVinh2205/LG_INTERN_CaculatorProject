import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQml 2.1

Window {
    id: mainView
    width: 320
    height: 515
    visible: true
    title: qsTr("Calculator")
    color: "#FFFFFF"

    property int radix: 10
    property string numberHex
    property string numberDec
    property string numberOct
    property string numberBin

    // onNumberHexChanged: console.log("onNumberHexChanged: " + numberHex);
    //onNumberDecChanged: console.log("onNumberDecChanged: " + numberDec);
    //onNumberOctChanged: console.log("onNumberOctChanged: " + numberOct)

    //expressionArea
    Rectangle{
        y:35
        id: expressionArea
        anchors.left: parent.left
        anchors.right: parent.right
        height: 30
        border.color: "black"
        border.width: 0.3
        color: "#E8E8E8"
        TextField {
            id: expressionText
            //anchors.leftMargin: buttons.implicitMargin
            //anchors.rightMargin: buttons.implicitMargin
            anchors.fill: parent
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.TopRight
            text: ""
            color: "black"
            font.pixelSize: 18
            font.family: "Arial"

        }
    }

    //resultArea
    Rectangle {

        id: resultArea
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: expressionArea.bottom
        height: 40
        border.color: "black"
        border.width: 0.3
        color: "#E8E8E8"
        TextField {
            id: resultText
            //anchors.leftMargin: buttons.implicitMargin
            //anchors.rightMargin: buttons.implicitMargin
            anchors.fill: parent
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.TopRight
            text: "0"
            color: "black"
            font.pixelSize: 25
            font.family: "Arial"
        }
    }

    //hexResult
    Rectangle {
        id: hexResult
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: resultArea.bottom
        height:23.5
        Rectangle{
            id:hex
            x:0
            y:0
            height: hexResult.height
            width: hexResult.height*2
            border.color: "black"
            border.width: 0.3
            color: "#E8E8E8"
            Text {
                id: hexadecimal
                text: "HEX"
                anchors.centerIn: hex
                color: "black"
                font.pixelSize: 18
                font.family: "Arial"
                fontSizeMode: Text.Fit
            }
            Rectangle{
                id: hexVisible
                visible: false
                width: 5
                height: hex.height
                color: "blue"

            }
        }

        Rectangle{
            id:hexValue
            anchors.left: hex.right
            height: hexResult.height
            width:hexResult.width-hex.width
            border.color: "black"
            border.width: 0.3
            color: "#E8E8E8"
            Text {

                id: hexadecimalValue
                text: numberHex
                anchors.left: hexValue.left
                anchors.leftMargin: 5

                color: "black"
                font.pixelSize: 18
                font.family: "Arial"
                fontSizeMode: Text.Fit
            }
        }

        MouseArea
        {
            id: mouseHex
            anchors.fill: hexResult
            onClicked: {
                hexVisible.visible = true
                decVisible.visible = false
                octVisible.visible = false
                binVisible.visible = false
                radix = 16;
                console.log("radix: %d", radix);
            }
        }
    }

    //DecResult
    Rectangle {
        id: decResult
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: hexResult.bottom
        height:23.5
        Rectangle{
            id:dec
            x:0
            y:0
            height: decResult.height
            width: decResult.height*2
            border.color: "black"
            border.width: 0.3
            color: "#E8E8E8"
            Text {
                id: decadecimal
                text: "DEC"
                anchors.centerIn: dec
                color: "black"
                font.pixelSize: 18
                font.family: "Arial"
                fontSizeMode: Text.Fit
            }
            Rectangle{
                id: decVisible
                visible: true
                width: 5
                height: hex.height
                color: "blue"
            }
        }
        Rectangle{
            id:decValue
            anchors.left: dec.right
            height: decResult.height
            width: decResult.width-dec.width
            border.color: "black"
            border.width: 0.3
            color: "#E8E8E8"
            Text {
                id: decimalValue
                text: numberDec
                anchors.left: decValue.left
                anchors.leftMargin: 5
                color: "black"
                font.pixelSize: 18
                font.family: "Arial"
                fontSizeMode: Text.Fit
            }
        }
        MouseArea
        {
            id:mouseDec
            anchors.fill: decResult
            onClicked: {
                decVisible.visible = true;
                hexVisible.visible = false;
                octVisible.visible = false;
                binVisible.visible = false;
                radix = 10;
                console.log("radix: %d", radix);
            }
        }

    }

    //octResult
    Rectangle {
        id: octResult
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: decResult.bottom
        height:23.5
        Rectangle{
            id:oct
            x:0
            y:0
            height: octResult.height
            width: octResult.height*2
            border.color: "black"
            border.width: 0.3
            color: "#E8E8E8"
            Text {
                id: octal
                text: "OCT"
                anchors.centerIn: oct
                color: "black"
                font.pixelSize: 18
                font.family: "Arial"
                fontSizeMode: Text.Fit
            }
            Rectangle{
                id: octVisible
                visible: false
                width: 5
                height: hex.height
                color: "blue"
            }
        }
        Rectangle{
            id:octValue
            anchors.left: oct.right
            height: octResult.height
            width: octResult.width-oct.width
            border.color: "black"
            border.width: 0.3
            color: "#E8E8E8"
            Text {
                id: octalValue
                text: numberOct
                anchors.left: octValue.left
                anchors.leftMargin: 5
                color: "black"
                font.pixelSize: 18
                font.family: "Arial"
                fontSizeMode: Text.Fit
            }
        }
        MouseArea
        {
            id: mouseOct
            anchors.fill: octResult
            onClicked: {
                decVisible.visible = false;
                hexVisible.visible = false;
                octVisible.visible = true;
                binVisible.visible = false;
                radix = 8;
                console.log("radix: %d", radix);
            }
        }
    }

    //binResult
    Rectangle {
        id: binResult
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: octResult.bottom
        height:23.5
        Rectangle{
            id:bin
            x:0
            y:0
            height: binResult.height
            width: binResult.height*2
            border.color: "black"
            border.width: 0.3
            color: "#E8E8E8"
            Text {
                id: binary
                text: "BIN"
                anchors.centerIn: bin
                color: "black"
                font.pixelSize: 18
                font.family: "Arial"
                fontSizeMode: Text.Fit
            }
            Rectangle{
                id: binVisible
                visible: false
                width: 5
                height: hex.height
                color: "blue"
            }
        }
        Rectangle{
            id:binValue
            anchors.left: bin.right
            height: binResult.height
            width:binResult.width-bin.width
            border.color: "black"
            border.width: 0.3
            color: "#E8E8E8"
            Text {
                id: binaryValue
                text: numberBin
                //anchors.fill: binValue.left
                anchors.leftMargin: 5
                color: "black"
                font.pixelSize: 18
                font.family: "Arial"
                fontSizeMode: Text.Fit
            }
        }
        MouseArea
        {
            id: mouseBin
            anchors.fill: binResult
            onClicked: {
                decVisible.visible = false;
                hexVisible.visible = false;
                octVisible.visible = false;
                binVisible.visible = true;
                radix = 2;
                console.log("radix: %d", radix);
            }
        }
    }

    //StackView
    Rectangle{
        id: multiView
        anchors.top:binResult.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        height:315

        StackView {
            //anchors.fill: multiview
            id: myStackView
            initialItem: calculator_page
        }
    }

    Component {
        id: calculator_page
        CalculatorPage{}
    }
    Component {
        id: bittoggle_page
        BitTogglePage{}
    }
    Component {
        id: memorylist_page
        MemoryListPage{}
    }

    function load_page(page) {
        switch (page) {
        case 'Keypad':
            myStackView.push(calculator_page);
            break;
        case 'BitTog':
            myStackView.push(bittoggle_page);
            break;
        case 'M':
            myStackView.push(memorylist_page);
            break;
        }
    }
}
