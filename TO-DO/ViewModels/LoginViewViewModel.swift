//
//  LoginViewViewModel.swift
//  TO-DO
//
//  Created by Yıldız Aydın on 29.10.2024.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""

    
    init(){}
    
    func login() {
        guard validate() else{
            return
        }
      
    }
    
    
    
    func validate() -> Bool{
        
        errorMessage = ""
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty
        else {
            errorMessage = "Lütfen tüm alanları doldurunuz!"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Lütfen geçerli bir email adresi giriniz!"
            return false 
        }
        return true
        
    }
    
    
}
