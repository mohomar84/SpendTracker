//
//  ContentView.swift
//  SpendTracker
//
//  Created by Mohamed Omar on 30/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var userName = ""
    @State private var password = ""
    @State private var wrongUserName = 0
    @State private var wrongPassword = 0
    @State private var showLoginScreen = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.blue.ignoresSafeArea()
                Circle().scale(1.7).foregroundColor(.white.opacity(0.15))
                Circle().scale(1.35).foregroundColor(.white)
                VStack{
                    Text("Login").font(.largeTitle).bold().padding()
                    TextField("UserName" , text: $userName).padding().frame(width: 300,height: 50).background(Color.black.opacity(0.05)).cornerRadius(10).border(.red, width:    CGFloat(wrongPassword))
                    SecureField("Password" ,text: $password).padding().frame(width: 300,height: 50).background(Color.black.opacity(0.05)).cornerRadius(10).border(.red, width:    CGFloat(wrongPassword))
                    Button("Login"){autheticateUser(userName: userName, password: password)}.foregroundColor(.white).frame(width: 300, height: 50).background(Color.blue).cornerRadius(10)
                    NavigationLink(destination: MainView(),isActive: $showLoginScreen){
                        EmptyView()
                    }
                    
                }
            }
            
            
        }.navigationBarHidden(true)
    }
    func autheticateUser(userName: String, password : String){
        if userName.lowercased() == "test"{
            wrongUserName = 0
            if password.lowercased() == "test"{
                wrongPassword = 0
                showLoginScreen = true
            }else{
                wrongPassword = 2
            }
        }else{
            wrongUserName = 2
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
