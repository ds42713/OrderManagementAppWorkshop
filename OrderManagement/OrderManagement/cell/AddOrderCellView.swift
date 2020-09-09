//
//  AddOrderCellView.swift
//  OrderManagement
//
//  Created by Pongsakorn Praditkanok on 7/7/2563 BE.
//  Copyright © 2563 Ds42713. All rights reserved.
//

import SwiftUI

struct AddOrderCellView: View {
    var menu: Order
    var body: some View {
        HStack{
            Image(menu.imageURL)
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 100, alignment: .center)
            .clipShape(Circle())
            VStack(alignment: .leading){
                Text(menu.name).font(.title).bold()
            }.padding()
            Spacer()
        }
    }
}

struct AddOrderCellView_Previews: PreviewProvider {
    static var previews: some View {
        AddOrderCellView(menu:Order.demoData()[0]).previewLayout(.sizeThatFits)
    }
}
