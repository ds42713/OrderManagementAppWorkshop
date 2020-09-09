//
//  MainOrderView.swift
//  OrderManagement
//
//  Created by Pongsakorn Praditkanok on 6/7/2563 BE.
//  Copyright © 2563 Ds42713. All rights reserved.
//

import SwiftUI

struct MainOrderView: View {
    
    @State var orderList = Order.demoData() // Order.demoData คือ ไฟล์ Order ส่วนของ demoData
    @State var isPresented = false 
    var body: some View {
        NavigationView{
            List {
                ForEach(self.orderList) {order in
                    MainOrderCellView(order: order)
                }.onDelete(perform: deleteOrder) // ใช้งานฟังชั่นที่สร้างข้างล่าง // onDelete คือ ตัวเลือกเลื่อนขวาเพื่อลบ
            }
            .sheet(isPresented: $isPresented) {
                AddOrderView(isPresented: self.$isPresented, orderList: self.$orderList)
            }
                .navigationBarTitle("รายการออเดอร์") // เพิ่มหัวข้อ
                .navigationBarItems(trailing: Button(action: {
                    self.isPresented = true }) {
                        Text("เพิ่มออเดอร์")
                })
        }
    }
    // สร้างฟังชั่นสำหรับลบ MainOrderCellView
    func deleteOrder(at offsets : IndexSet)  { // offsets รับค่าตำแหน่งทั้งหมดมา
        offsets.forEach { Index in // Index เป็นแต่ละคัวที่อยู่ใน offset
            orderList.remove(at: Index)  // ลบตำแหน่งที่ index
        }
    }
}
struct MainOrderView_Previews: PreviewProvider {
    static var previews: some View {
        MainOrderView()
    }
}
