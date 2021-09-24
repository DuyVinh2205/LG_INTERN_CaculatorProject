import QtQuick 2.0
import QtQml 2.1

CalculatorPage {
    Component.onCompleted: {
        button1.clicked.connect(function(){
            console.log("ok");
        });
    }

}
