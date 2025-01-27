//
//  TLButton.swift
//  Todo
//
//  Created by Helmi Yatim on 5/1/24.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        })
    }
}

#Preview {
    TLButton(title: "Value",
             background: .blue){
        //Action
    }
}
