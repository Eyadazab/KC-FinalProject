//
//  ContactPage.swift
//  Techno Gate
//
//  Created by Mohamed Azab on 20/11/2022.
//

import SwiftUI

struct ContactPage: View {
    @State private var aisp = false
    let contact: Contact
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [.cyan, .indigo, .white], startPoint: .bottomLeading, endPoint: .topTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image(contact.imagename)
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding()
                VStack {
                    VStack {
                        HStack {
                            Text("Device:")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                            Text(contact.name)
                                .font(.largeTitle)
                                }.foregroundColor(.indigo)
             
                            .padding()
                        HStack {
                            Text("Size:              ")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                            Text(contact.phone)
                                .font(.largeTitle)
                                }.foregroundColor(.indigo)
                            
                        HStack {
                            Text("Memory:   ")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                            Text(contact.pro)
                                .font(.largeTitle)
                                }.foregroundColor(.indigo)
                            .padding()
                    }.background(Color(.white))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding()
                    Spacer()
                     
                    Button(action: {
                        self.aisp = true
                    }, label: {
                        Text("Order Now")
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 40))
                    })
                        .frame(width: 200, height: 50, alignment: .center)
                        .padding()
                        .background(.white.opacity(0.2))
                        .cornerRadius(10)
                        .alert(isPresented: $aisp, content:{ Alert(title: Text("Order Request"), message: Text("Are You Sure That You Want To Confirm The Order?"), primaryButton: .default(Text("Cancel")), secondaryButton: .default(Text("YES")))})
                    Spacer()
                }
               
                
            }
            
        }
        
        
        
    }
}

struct ContactPage_Previews: PreviewProvider {
    static var previews: some View {
        ContactPage(contact: contacts[0])
    }
}
