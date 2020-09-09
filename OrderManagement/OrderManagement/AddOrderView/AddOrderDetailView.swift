//
//  AddOrderDetailView.swift
//  OrderManagement
//
//  Created by Pongsakorn Praditkanok on 8/7/2563 BE.
//  Copyright © 2563 Ds42713. All rights reserved.
//

import SwiftUI

struct AddOrderDetailView: View {
    @Binding var isPresented : Bool
    @State  var order :Order
    @Binding var orderList: [Order]
    var body: some View {
        VStack {
            
            CircleImage(imageURL: order.imageURL)
            
            Text(order.name)
                .font(.title)
            
            Text("โต๊ะ \(order.table) จำนวน\(order.amount) หมายเหตุ \(order.option)" )
                .foregroundColor(.gray)
            
            AddOrderFormView(order: $order)
            
            Button(action: {
                self.orderList.append(self.order) // append เพิ่มไปต่อท้ายตัวด้านล่าง
                self.isPresented = false
            }) {
                Text("เพิ่มออเดอร์")
            }.frame(maxWidth: .infinity, minHeight: 48, idealHeight: 48, maxHeight: 48, alignment: .center)
                .foregroundColor(.black).font(.title)
                .background(LinearGradient(gradient: Gradient(colors: [.yellow,.green] ), startPoint: .leading, endPoint: .trailing))
        }
    }
}

struct AddOrderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddOrderDetailView(
            isPresented: .constant(true)
            , order: Order.allMenu()[2]
            , orderList: .constant( [] )
        )
    }
}
struct CircleImage: View {
    var imageURL :String
    var body: some View {
        Image(imageURL)
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4 )) // overlay เพิ่มขอบรอบวง
            .shadow(radius: 10) //เพิ่มเงา
    }
}
