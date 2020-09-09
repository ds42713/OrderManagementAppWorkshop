//
//  Order.swift
//  OrderManagement
//
//  Created by Pongsakorn Praditkanok on 6/7/2563 BE.
//  Copyright © 2563 Ds42713. All rights reserved.
//

import Foundation

struct Order : Identifiable{
    var id = UUID() // คำสั่ง ID Identifiable
    var name : String
    var imageURL : String
    var option : String = ""
    var table : String = "1"
    var amount : Int = 1
}

extension Order{
    static func allMenu() -> [Order] {
           return [
               Order(name: "ลาเต้", imageURL: "coffee-1"),
               Order(name: "เอสเพรสโซ่", imageURL: "coffee-2" ),
               Order(name: "มอคค่า", imageURL: "coffee-3"),
               Order(name: "อัฟโฟกาโต้", imageURL: "coffee-4"),
               Order(name: "ข้าวผัด", imageURL: "food-1"),
               Order(name: "แกงเขียวหวาน", imageURL: "food-2"),
               Order(name: "ขนมจีนน้ำยา", imageURL: "food-3"),
               Order(name: "ผัดไทย", imageURL: "food-4")
           ]
       }
    static func demoData() -> [Order] {
        return [
            Order(name: "ลาเต้", imageURL: "coffee-1", option: "หวานน้อย", table: "3", amount: 2),
            Order(name: "เอสเพรสโซ่", imageURL: "coffee-2" , table: "4", amount: 2),
            Order(name: "มอคค่า", imageURL: "coffee-3", option: "หวานน้อย", table: "3"),
            Order(name: "อัฟโฟกาโต้", imageURL: "coffee-4"),
            Order(name: "ข้าวผัด", imageURL: "food-1", option: "ไม่ใส่ผัก", amount: 2),
            Order(name: "แกงเขียวหวาน", imageURL: "food-2", table: "2", amount: 3),
            Order(name: "ขนมจีนน้ำยา", imageURL: "food-3", option: "ไม่เผ็ด"),
            Order(name: "ผัดไทย", imageURL: "food-4", table: "5")
        ]
    }
}
