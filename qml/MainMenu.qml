import QtQuick 2.6
import QtQuick.Controls 1.4

MenuBar{
    id: mainMenu
    
    Menu {
        visible: true
        title: 'Game'
        
        MenuItem {
            text: 'Next Level'
            shortcut: 'N'
            onTriggered: level_number < 6 ? level_number += 1 : 1
        }

        MenuItem {
            text: 'Previus Level'
            shortcut: 'P'
            onTriggered: level_number > 1 ? level_number -= 1 : 1
        }

        MenuItem {
            text: 'Reload Level'
            shortcut: 'Esc'
            onTriggered: level_number = level_number
        }

        Menu {
            visible: true
            title: 'Level Collection'

            MenuItem {
                text: 'Sample'
                onTriggered: level_number = 1
            }

            MenuItem {
                text: 'Sasquatch'
                onTriggered: level_number = 2
            }
       }

        MenuItem {
            text: 'Undo'
            shortcut: 'Ctrl+Z'
            //onTriggered: window.close()
        }

        MenuItem {
            text: 'Redo'
            shortcut: 'Ctrl+Shift+Z'
            //onTriggered: window.close()
        }

        MenuSeparator{
            id: separator
        }

        MenuItem {
            text: 'Quit'
            shortcut: 'Ctrl+Q'
            onTriggered: window.close()
        }
    }
    
    
    Menu {
        visible: true
        title: 'Help'

        MenuItem {
            text: 'KSokoban Help'
            shortcut: 'F1'
            //onTriggered: window.close()
        }

        MenuItem {
            text: 'About KSokoban'
            //onTriggered: window.close()
        }

        MenuItem {
            text: 'About KDE'
            //onTriggered: window.close()
        }
    }
}
