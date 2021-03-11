//
//  ButtonView.swift
//  BMI Calculator
//
//  Created by sanmi_personal on 09/03/2021.
//

import SwiftUI

struct ButtonView: View {
    var iconName: String
    var action :() -> Void
    
    var body: some View {
        Button(action: action, label: {
            Image(systemName: iconName)
                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }).background(Color.gray)
        .clipShape(Circle())
        .foregroundColor(.white)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(iconName: "plus", action: {})
    }
}
