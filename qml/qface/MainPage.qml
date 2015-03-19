import QtQuick 1.1
import QtWebKit 1.0
import com.nokia.meego 1.0


     Page {
         tools: commonTools
         Flickable {
             id: flickable
             width: parent.width
             height: parent.height
             contentWidth: Math.max(parent.width,webView.width)
             contentHeight: Math.max(parent.height,webView.height)

             WebView {
                 //url: "http://m.facebook.com"
                 //url: "http://zhukov.github.io/webogram/"
                 //url: "http://playtomax.com/"
                 //url: "https://mobile.twitter.com"
                 //url: "http://learningwebgl.com/lessons/lesson03/index.html"
                 url: "http://games-uft.mmi.ru/plants-vs-monsters/?host=playfree-uft.mmi.ru&locale=en&p=playfree-uft.mmi.ru"

                 id: webView
 //anchors.fill: parent
                 preferredWidth: flickable.width
                 preferredHeight: flickable.height

                 settings.offlineStorageDatabaseEnabled: true
                 settings.localStorageDatabaseEnabled: true
                 settings.privateBrowsingEnabled: false
                 settings.javaEnabled: true
                 settings.javascriptCanAccessClipboard: true
                 settings.javascriptCanOpenWindows: true
                 settings.javascriptEnabled: true
                 settings.pluginsEnabled: true
                 settings.localContentCanAccessRemoteUrls: true
                 settings.offlineWebApplicationCacheEnabled: true
             }
         }
     }
