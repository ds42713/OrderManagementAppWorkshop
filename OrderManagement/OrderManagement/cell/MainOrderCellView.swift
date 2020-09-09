//
//  MainOrderCellView.swift
//  OrderManagement
//
//  Created by Pongsakorn Praditkanok on 6/7/2563 BE.
//  Copyright © 2563 Ds42713. All rights reserved.
//

import SwiftUI

struct MainOrderCellView: View {
    var order: Order
    var body: some View {
        HStack{
            Image(order.imageURL)
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 100, alignment: .center)
            .clipShape(Circle())
            VStack(alignment: .leading){
                Text(order.name).font(.headline)
                Text(order.option).font(.subheadline).foregroundColor(.gray)
            }.padding()
            Spacer()
            VStack(alignment: .trailing) {
                Text("จำนวน \(order.amount)" ).font(.headline)
                Text(order.table).font(.subheadline).foregroundColor(.gray)
            }
        }
    }
}

struct MainOrderCellView_Previews: PreviewProvider {
    static var previews: some View {
        MainOrderCellView(order:Order.demoData()[0]).previewLayout(.sizeThatFits)
    }
}
