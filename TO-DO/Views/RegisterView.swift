//
//  RegisterView.swift
//  TO-DO
//
//  Created by Yıldız Aydın on 29.10.2024.
//

import SwiftUI

struct RegisterView: View {
  
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        NavigationStack{
            VStack{
                HeaderView()
                
                Form{
                    Section(header: Text("Kayıt Formu")) {
                        TextField("Kullanıcı Adınız ", text: $name)
                        TextField("Email adresiniz", text: $email)
                        SecureField("Şifeniz", text: $password)
                        
                    }
                }
                .frame(height: 200)
                BigButton(title: "Kayıt Ol", action: {})
                 Spacer()            }
        }
        
        
    }
}

#Preview {
    RegisterView()
}
