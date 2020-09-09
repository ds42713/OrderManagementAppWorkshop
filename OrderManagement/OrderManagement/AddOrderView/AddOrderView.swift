//
//  AddOrder.swift
//  OrderManagement
//
//  Created by Pongsakorn Praditkanok on 7/7/2563 BE.
//  Copyright © 2563 Ds42713. All rights reserved.
//

import SwiftUI

struct AddOrderView: View {
    @State var menuList = Order.allMenu()
    @Binding var  isPresented : Bool
    @Binding var orderList: [Order]
    var body: some View {
        NavigationView {
            List {
                ForEach(self.menuList) { menu in
                    NavigationLink(
                    destination: AddOrderDetailView(isPresented: self.$isPresented, order: menu, orderList: self.$orderList)) {
                        AddOrderCellView(menu: menu)
                    }
                } // ใช้งานฟังชั่นที่สร้างข้างล่าง
            }
            .navigationBarTitle("เลือกเมนู")
        }
    }
}

struct AddOrder_Previews: PreviewProvider {
    static var previews: some View {
        AddOrderView(
            isPresented: .constant(true)
            , orderList : .constant( [] )
        )
    }
}
