import QtQuick 2.6
import QtQuick.Controls 1.4

MenuBar{
    id: mainMenu
    
    Menu {
        visible: true
        title: 'File'
        
        MenuItem {
            text: 'Close'
            shortcut: 'Alt+F4'
            onTriggered: window.close()
        }
    }
    
    
    Menu {
        visible: true
        title: 'Levels'
        Menu {
            visible: true
            title: 'Sasquatch'
            
            MenuItem {
                text: 'Level 1'
                onTriggered: level_number = 1
            }
            
            MenuItem {
                text: 'Level 2'
                onTriggered: level_number = 2
            }
            
            MenuItem {
                text: 'Level 3'
                onTriggered: level_number = 3
            }
            
            MenuItem {
                text: 'Level 4'
                onTriggered: level_number = 4
            }
            
            MenuItem {
                text: 'Level 5'
                onTriggered: level_number = 5
            }
        }
    }
}
