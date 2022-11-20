//
//  ContentView.swift
//  Techno Gate
//
//  Created by Mohamed Azab on 19/11/2022.
//

import SwiftUI

struct LIst: View {
    var body: some View {
        NavigationView{

            
            VStack(alignment: .leading) {

                    
                Text("Our Available \nProducts:")
                    .padding()
                    .font(.system(size: 40, weight: .semibold))
                    .foregroundColor(.indigo)

                
                List(contacts) { contact in
                    NavigationLink(destination: ContactPage(contact: contact)){
                        ExtractedView(contact: contact)
                    }.listStyle(SidebarListStyle())
                        .navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true)
            }
                
           
        }
        
        
       
    }.navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
}

struct LIst_Previews: PreviewProvider {
    static var previews: some View {
        LIst()
            
    }
}

struct ExtractedView: View {
    let contact: Contact
    var body: some View {
        
        HStack{
            Image(contact.imagename)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(20)
            VStack(alignment: .leading) {
                Text("\(contact.name)")
                    .font(.custom("PlayfairDisplay-Bold", size: 20))
            
                Text(contact.pro)
                .font(.custom("PlayfairDisplay-Bold", size: 15))
            }
            Spacer()
            
        }
        .foregroundColor(Color(.white))
        .padding()
        .background(.indigo)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        
        
        
    }
}
}

