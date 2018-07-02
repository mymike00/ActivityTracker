import QtQuick 2.4
import Ubuntu.Components 1.3

Page {
   header: PageHeader {
      id: pageHeader
      title: i18n.tr("About")
   }

   Flickable {

      id: page_flickable
      anchors {
         top: pageHeader.bottom
         left: parent.left
         right: parent.right
         bottom: parent.bottom
      }
      contentHeight:  about_column.height + units.gu(6)
      clip: true
      Column {
         id: about_column
         anchors.centerIn: parent
         spacing: units.gu(4)
         width: parent.width-spacing

         Column {
            width: parent.width

            Text {
               font.weight: Font.DemiBold
               text: i18n.tr("Activity Tracker")
               font.pointSize: units.gu(2.5)
               anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
               text: i18n.tr("Version ") + "0.10.4"
               anchors.horizontalCenter: parent.horizontalCenter
            }
         }

         ProportionalShape {
            id: logo
            width: units.gu(17)
            source: Image {
               source: "images/new-icon.svg"
            }
            anchors.horizontalCenter: parent.horizontalCenter
            aspect: UbuntuShape.DropShadow
         }

         Column {
            width: parent.width

            Text {
               text: "© 2016-2018 Michele Castellazzi"
               anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
               text: "© 2015 Chris Wayne"
               anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
               font.pointSize: units.gu(1)
               text: i18n.tr("Released under the terms of the GNU GPL v3")
               anchors.horizontalCenter: parent.horizontalCenter
            }
         }

         Column {
            width: parent.width
            spacing: units.gu(2)

            Text {
               font.underline: false
               text: i18n.tr("Source code available on ") + "<a style=\"text-decoration: none;\" href=\"https://github.com/mymike00/ActivityTracker\">GitHub.com</a>"
               font.pointSize: units.gu(1)

               anchors.horizontalCenter: parent.horizontalCenter
               onLinkActivated: Qt.openUrlExternally(link)
            }

            Text {
               text: i18n.tr('Part of the icons is made by <a href="http://www.freepik.com" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a>"')
               anchors.horizontalCenter: parent.horizontalCenter
               horizontalAlignment: Text.AlignHCenter
               wrapMode: Text.Wrap
               font.pointSize: units.gu(1)
               width: parent.width
            }
         }
      }
   }
}
