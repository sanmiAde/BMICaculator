//
//  AttributesView.swift
//  BMI Calculator
//
//  Created by sanmi_personal on 09/03/2021.
//

import SwiftUI

struct AttributesView: View {
    
    @Binding var amount: Int
    var attributeName: String
    
    var body: some View {
        VStack {
            Text(attributeName).autocapitalization(.allCharacters)
                .foregroundColor(.gray)
            Text(String(amount))
                .foregroundColor(.white)
            HStack{
                ButtonView(iconName: "plus", action: {
                    $amount.wrappedValue += 1
                })
                ButtonView(iconName: "minus", action: {
                    $amount.wrappedValue -= 1
                })
            }
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(Color.black)
        .foregroundColor(.gray)
        .cornerRadius(10)
    }
}

struct AttributesView_Previews: PreviewProvider {
    @State static var amount = 56
    static var previews: some View {
        AttributesView(amount: $amount, attributeName: "weight")
    }
}
