import Qt 4.7
import QtQuick 1.1

import com.nokia.meego 1.1

PageStackWindow {
    id: appWindow
    showStatusBar: false
        showToolBar: false
    initialPage: mainPage
    width:854
     height:480

    MainPage {
        id: mainPage
    }

    ToolBarLayout {
        id: commonTools
        visible: true
        ToolIcon {
            platformIconId: "toolbar-view-menu"
            anchors.right: (parent === undefined) ? undefined : parent.right
            onClicked: (myMenu.status === DialogStatus.Closed) ? myMenu.open() : myMenu.close()
        }
    }

    Menu {
        id: myMenu
        visualParent: pageStack
        MenuLayout {
            MenuItem { text: qsTr("Sample menu item") }
        }
    }
}
