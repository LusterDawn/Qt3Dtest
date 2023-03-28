import QtQuick 2.0
import QtQuick.Scene3D 2.0

Item {
    // 顶头的文本
    Text {
        text: "Start Tracking"
        anchors.top: parent.top
        anchors.topMargin: 2
        anchors.horizontalCenter: parent.horizontalCenter

        MouseArea {
            anchors.fill: parent
            onClicked: animation.start()
        }
    }
    Rectangle {        // 创建容纳三维场景的容器
        id: scene
        anchors.fill: parent
        anchors.margins: 20
        color: "#d9cc1a"

        transform: Rotation {     // 让矩形具备旋转三维旋转特性
            id: sceneRotation
            axis.x: 1
            axis.y: 0
            axis.z: 0
            origin.x: scene.width / 2     //旋转中心点x
            origin.y: scene.height / 2   //旋转中心点 y
        }

        Scene3D {        // 创建三维场景
            id: scene3d
            anchors.fill: parent
            anchors.margins: 10
            focus: true
            aspects: ["input", "logic"]
            cameraAspectRatioMode: Scene3D.AutomaticAspectRatio

            AnimatedEntity {}   // 调用实体？
        }
    }
}
