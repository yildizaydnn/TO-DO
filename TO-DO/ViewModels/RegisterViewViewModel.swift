//
//  RegisterViewViewModel.swift
//  TO-DO
//
//  Created by Yıldız Aydın on 29.10.2024.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class RegisterViewViewModel: ObservableObject{
    
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    func register() {
        
        guard validate() else {
            return
        }
        
        
        Auth.auth().createUser(withEmail: email, password: password) {  [weak self ]result , error in
            guard let userId = result?.user.uid else {
                return
             }
        
        }
                
    }
    private func insertUserRecord(id: String) {
        let newUser = User(id: id, name: name, email: email, joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
              errorMessage = "Lütfen tüm alanları doldurunuz"
          
            return false
        }
        
        
      
        
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Geçerli bir email adresi giriniz"
            return false
        }
        guard password.count >= 6 else {
            errorMessage = "Lütfen 6 veya daha fazla karakterde bir şifre belirleyiniz"
            return false
        }
        return true
    }

    
}
