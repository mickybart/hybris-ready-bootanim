import QtQuick 2.5

Item {
    width:400
    height:600

    Rectangle {
        id: logo
        width: parent.width
        height: parent.height*7/10 + line.height
        color: "#4d4d4d"

        Image {
            id: image
            width: parent.width
            y: (parent.height - image.height - line.height)*2/3
            fillMode: Image.PreserveAspectFit
            source: "res/archlinux-logo-light-scalable.1ae4cc2e2469.svg"
        }
        
        Rectangle {
            id: line
            width: parent.width; height:10
            y: parent.height - line.height
            color: "#1793d1"
        }
    }

    Rectangle {
        width: parent.width
        height: parent.height - logo.height
        y: logo.height
        color: "white"
        
        Image {
            id: gear
            width: 70
            height: 70
            x: (parent.width - gear.width)/2
            y: (parent.height - gear.height)/2
            fillMode: Image.PreserveAspectFit
            source: "res/Gear_icon.svg"
            
            NumberAnimation on rotation {
                id: gearAnim
                from: 0
                to: 360
                duration: 3000
                loops: Animation.Infinite
            }
        }
    }
}
