import QtQuick 2.4
import QtPositioning 5.2
import Ubuntu.Components 1.3
import QtQuick.Layouts 1.1
import io.thp.pyotherside 1.4
import QtSystemInfo 5.0
import QtLocation 5.2
import ubuntu_component_store.Curated.PageWithBottomEdge 1.0
import ubuntu_component_store.Curated.EmptyState 1.0
import Ubuntu.Components.ListItems 1.3 as ListItem
import Ubuntu.Components.Popups 1.3
import "./lib/polyline.js" as Pl
import "./keys.js" as Keys



Page {
   header: PageHeader {
      id: settingsHeader
      title: "Units"
   }
   id:settings

   ListItem.ItemSelector {
      anchors {
         top: settingsHeader.bottom
         left: parent.left
         right: parent.right
      }
      text: i18n.tr("Units")
      model: [i18n.tr("Kilometers"),
      i18n.tr("Miles")]
      expanded: true
      selectedIndex: switch(runits) {
         case "kilometers": return 0;
         case "miles": return 1;
      }
      onSelectedIndexChanged: {
         console.warn(model[selectedIndex].toLowerCase())
         runits=model[selectedIndex].toLowerCase()
         pygpx.set_units(model[selectedIndex].toLowerCase())
      }
   }

}
