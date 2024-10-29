//
//  LoginView.swift
//  TO-DO
//
//  Created by Yıldız Aydın on 29.10.2024.
//

import SwiftUI

struct LoginView: View {
  
    @StateObject var viewModel = LoginViewViewModel()
  
    var body: some View {
        NavigationStack{
            VStack{
            
                HeaderView()
             
                Form{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundStyle(.red)
                    }
                    TextField("Email Adresiniz", text: $viewModel.email)
                        .autocorrectionDisabled()
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    SecureField("Şifreniz", text: $viewModel.password)
    
                }
                .frame(height: 200)
                BigButton(title: "Giriş Yap"){
                    viewModel.login()
                }
                
                 Spacer()
                
                VStack{
                    Text("Buralarda yeni misin?")
                    NavigationLink("Yeni hesap oluştur!",destination: RegisterView())
                        .tint(.purple)

                }
                .padding(.bottom,150)
               
                
            }
        }

    }
}

#Preview {
    LoginView()
}
