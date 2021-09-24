import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Item {
    GridView{
        id:myGrid
        cellWidth: parent.width/3
        cellHeight: 10
        anchors.fill: parent
        model: ListModel{
            ListElement{
                name: 'a'
            }
            ListElement{
                name:'b'
            }
            ListElement{
                name:'c'
            }
        }
        delegate: RowLayout{
            width: myGrid.cellWidth/3
            height: myGrid.cellHeight
            Text: 'Name: ' + name
        }
    }
}
