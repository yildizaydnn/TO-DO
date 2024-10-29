//
//  RegisterView.swift
//  TO-DO
//
//  Created by Yıldız Aydın on 29.10.2024.
//

import SwiftUI

struct RegisterView: View {
  
   @StateObject var viewModel = RegisterViewViewModel()
    
    
    var body: some View {
        NavigationStack{
            VStack{
                HeaderView()
                
                Form{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundStyle(.red)
                    }
                    Section(header: Text("Kayıt Formu")) {
                        TextField("Kullanıcı Adınız ", text: $viewModel.name)
                            .autocorrectionDisabled()
                        TextField("Email adresiniz", text: $viewModel.email)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                        SecureField("Şifeniz", text: $viewModel.password)
                        
                    }
                }
                .frame(height: 250)
                BigButton(title: "Kayıt Ol", action: viewModel.register)
                Spacer()
            }
    
            
        }
        
        
    }
}

#Preview {
    RegisterView()
}
