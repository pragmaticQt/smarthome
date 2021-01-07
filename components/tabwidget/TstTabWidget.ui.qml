import QtQuick 2.12

TabWidget
{
   id: tabWidget
    width: 640
    height: 480

    state: "init"

    pages: [
        Rectangle { color: "yellow"; width: 50; height: 300},
        Rectangle { color: "black"; width: 100; height: 200 }
    ]
    states: [
        State {
            name: "init"
            PropertyChanges {
                target: tabWidget;
                topBar    { tabs: ["foo", "bar"]; indices: [0, 1] }
                leftBar   { tabs: ["Left1", "Left2"]; indices: [1, 0] }
                bottomBar { tabs: ["Unten1", "Unten2", "Unten3"]; indices: [0, 0, 1] }
                rightBar  { tabs: ["Right #1", "Right2"]; indices: [1, 0] }
            }
        }
    ]
}
