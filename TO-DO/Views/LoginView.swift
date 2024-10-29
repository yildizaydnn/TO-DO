//
//  LoginView.swift
//  TO-DO
//
//  Created by Yıldız Aydın on 29.10.2024.
//

import SwiftUI

struct LoginView: View {
  
    @State var email = ""
   @State var password = ""
  
    
    var body: some View {
        NavigationStack{
            VStack{
            
                HeaderView()
             
                Form{
                    TextField("Email Adresiniz", text: $email)
                    SecureField("Şifreniz", text: $password)
    
                }
                .frame(height: 150)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                   ZStack {
                        RoundedRectangle(cornerRadius: 3)
                            .foregroundStyle(
                                .primary)
                            .tint(.purple)
                        Text("Giriş Yap")
                           .foregroundStyle(.white)
                    }
                })
                .frame(height: 50)
                .padding(.horizontal)
                 Spacer()
                
                VStack{
                    Text("Buralarda yeni misin?")
                    NavigationLink("Yeni hesap oluştur!",destination: RegisterView())
                        .tint(.purple)

                }
                
               
                
            }
        }

    }
}

#Preview {
    LoginView()
}
