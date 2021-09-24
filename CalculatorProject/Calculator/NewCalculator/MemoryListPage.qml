import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

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
                anchors.fill: parent.height
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
}
