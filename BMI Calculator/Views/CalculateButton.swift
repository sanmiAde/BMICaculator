//
//  CalculateButton.swift
//  BMI Calculator
//
//  Created by sanmi_personal on 09/03/2021.
//

import SwiftUI

struct CalculateButton: View {
    var title : String
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            Text(title)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: 100)
        })
        .background(Color.red)
        
    }
}

struct CalculateButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculateButton(title: "CALCULATE", action: {})
    }
}
