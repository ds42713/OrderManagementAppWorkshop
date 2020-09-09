//
//  AddOrderFormView.swift
//  OrderManagement
//
//  Created by Pongsakorn Praditkanok on 8/7/2563 BE.
//  Copyright © 2563 Ds42713. All rights reserved.
//

import SwiftUI

struct AddOrderFormView: View {
    
    @Binding var order: Order
    @State var option = ""
    @State var table = "1"
    @State var amount = 0
    var body: some View {
        Form{
            Section(header: Text("โต๊ะและจำนวน") ) {
                
                Picker(selection: $order.table, label: Text(" โต๊ะ ")) {
                    Text("โต๊ะ 1").tag("1") // ตัวแปลtableรับข้อมูลstring หลังtagเลยต้องเป็นstring
                    Text("โต๊ะ 2").tag("2") // หลัง tag เป็นตัวส่งข้อมูลให้ตัวแปล
                    Text("โต๊ะ 3").tag("3")
                    Text("โต๊ะ 4").tag("4")
                    Text("โต๊ะ 5").tag("5")
                }.pickerStyle(SegmentedPickerStyle())
                
                Stepper(value: $order.amount, in: 1...10) {
                    Text(" จำนวน \(order.amount)")
                }
            }
            
            Section(header: Text("หมายเหตุ") ) {
                TextField(" ไม่หวาน ไม่ผัก  ...  ", text: $order.option)
                    .padding()
            }
        }
    }
    struct AddOrderFormView_Previews: PreviewProvider {
        static var previews: some View {
            AddOrderFormView(order: .constant(Order.allMenu()[0]))//ใส่ .constant ให้เป็นค่าคงที่ กันค่าใน allmenuเปลี่ยน
        }
    }
}
