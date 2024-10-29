//
//  BigButtonView.swift
//  TO-DO
//
//  Created by Yıldız Aydın on 29.10.2024.
//

import SwiftUI

struct BigButton: View {
   
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
           ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .foregroundStyle(
                        .primary)
                    .tint(.purple)
                Text(title)
                   .foregroundStyle(.white)
            }
        })
        .frame(height: 50)
        .padding(.horizontal)
    }
}

#Preview {
    BigButton(title: "String", action: {})
}
