//
//  FormIphoneSeting.swift
//  OrderManagement
//
//  Created by Pongsakorn Praditkanok on 8/7/2563 BE.
//  Copyright © 2563 Ds42713. All rights reserved.
//

import SwiftUI

struct FormIphoneSeting: View {
    @State var isOn = true
    var body: some View {
        NavigationView {
            Form{
                Section  // Section(header: , footer: , content: ) headerคือหัวข้อของกล่องข้อความ footerคือ ข้างล่างของกล่องข้อความ
                    {
                        NavigationLink(destination: Text("Keybords")) {
                            HStack {
                                Text(" Keybords ")
                                Spacer()
                                Text(" 3 ").foregroundColor(.gray)
                            }
                        }
                        NavigationLink(destination: Text("")) {
                            Text("Hardware keybords")
                        }
                }
                Section(header: Text("Emoji"), footer: Text("Send Emoji and Aniemoji Sticker from your emoji keybords ")){
                    Toggle(isOn: $isOn) { // กด+ คำสั่งToggle
                        Text("Emoji sticker")
                    }
                }
            }
        }
        struct FormIphoneSeting_Previews: PreviewProvider {
            static var previews: some View {
                FormIphoneSeting()
            }
        }
}
}


