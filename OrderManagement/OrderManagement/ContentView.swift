//
//  ContentView.swift
//  OrderManagement
//
//  Created by Pongsakorn Praditkanok on 5/7/2563 BE.
//  Copyright © 2563 Ds42713. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var username = "" // ใช้stateเพื่อให้ตัวแปรเก็บข้อมูลจาก textfield
    @State var password = "" //@State ทำให้ค่าตัวแปรเปลื่ยนแปลงได้
    @State var isLogin = false // เมื่อตัวแปรขึ้นต้นด้วย is มันจะมีค่าเป็น ture หรือ false เท่านั้น
    var body: some View {
        
        VStack{
            if isLogin{
                MainOrderView()
                //   Button(action: {  self.isLogin = false   }) {  Text("Logout")}
                // เพิ่มปุ่ม logout
            }else{
                ZStack {
                    //      Color(red: 0.18, green: 0.80, blue: 0.44, opacity: 1.00) // opacity = alpha
                    Color.init(red : 246 / 250 , green :  246 / 250 , blue :244/250) // สีพื้นหลัง
                        .edgesIgnoringSafeArea(.all) //เพื่ิอให้ไปถึงข้างบน ตรงแบต เวลา
                    VStack {
                        Text("Order Management")
                            .font(.title)
                            //     .font(.system(size: 40)) ขนาดตัวอักษร
                            .bold()
                            .padding()
                       Image(systemName: "link") //คำสั่งโลโก้
                        .foregroundColor(.red)
                        TextField("Username", text: $username) // ใส่ $ ข้างหน้าเพื่อใช้ Stateเปลี่ยนแปลงค่าได้
                            .frame(width: 280)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(32) // กรอบโค้ง
                            .shadow(radius: 3) // เงา
                        SecureField("Password", text: $password) // ใช้เวลาใส่ password ให้ ปิดpassword
                            .frame(width: 280)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(32) // กรอบโค้ง
                            .shadow(radius: 3) // เงา
                        Button(action: {
                            self.loginCheck()
                        } )
                        {
                            Text("Sign in")
                                .frame(width: 280)
                                .padding()
                                .foregroundColor(Color.white)
                                .background(Color(red: 98 / 255 , green: 212 / 255 , blue: 195 / 255))
                                .cornerRadius(32)
                                .shadow(radius: 3)
                                .padding()
                        }
                    }
                }
            }
        }
    }
    
    func loginCheck()  {
        if self.username == "Admin" && self.password == "123456"{
            self.isLogin = true
            print("welcome Admin")
        }else if self.username == "Guide" && self.password == "321654"{
            self.isLogin = true
            print("welcome Guide")
        }else{
            print("Error") }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

