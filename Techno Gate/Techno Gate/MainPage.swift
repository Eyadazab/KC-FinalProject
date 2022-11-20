//
//  MainPage.swift
//  Techno Gate
//
//  Created by Mohamed Azab on 20/11/2022.
//

import SwiftUI

struct MainPage: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView{
            ZStack{
                    LinearGradient(colors: [.white, .cyan, .indigo], startPoint:.topTrailing, endPoint: .bottomLeading)
                        .ignoresSafeArea()
                    VStack{
                        Image("m")
                            .resizable()
                            .frame(width: 300, height: 200)
                            .cornerRadius(20)
                        TextField("Email", text: $email)
                            .background()
                            .frame(width: 300)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .cornerRadius(20)
                            .font(.title2)
                        TextField("Password", text: $password)
                            .font(.title2)
                            .background()
                            .frame(width: 300)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .cornerRadius(20)
                        TextField("Username", text: $name)
                            .font(.title2)
                            .background()
                            .frame(width: 300)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .cornerRadius(20)
                        Text("welcome! \(name)")
                            
                      
                        
                        NavigationLink(destination: {
                            LIst()
                        }, label: {
                            Text("enter")
                                .frame(width: 300)
                                .foregroundColor(.black)
                                .font(.largeTitle)
                                .background(LinearGradient(colors: [.white, .cyan, .indigo], startPoint:.topTrailing, endPoint: .bottomLeading)
                                    .ignoresSafeArea())
                                .cornerRadius(7)
                        
                        })

                 
                            
                        .padding()
                            
                        
                    }.navigationTitle("sign-in")
                   
                }
            }
        }
    }

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
