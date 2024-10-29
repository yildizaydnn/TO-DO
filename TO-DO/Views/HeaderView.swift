//
//  HeaderView.swift
//  TO-DO
//
//  Created by Yıldız Aydın on 29.10.2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            Image("applogo")
                .resizable()
                .frame(width: 150,height: 150)
            Text("")
                .font(.system(size: 50))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top,30)
        }.padding(.top,100)
    }
}

#Preview {
    HeaderView()
}
