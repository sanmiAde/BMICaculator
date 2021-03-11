//
//  SelectHeightView.swift
//  BMI Calculator
//
//  Created by sanmi_personal on 08/03/2021.
//

import SwiftUI
import Foundation

struct SelectHeightView: View {
    @Binding var height: Double
    
    var body: some View {
        VStack {
            Text("height".capitalized)
            Text(String(height))
            Slider(value: $height, in: 150...250)
                .padding()
        } .background(Color.black)
        .foregroundColor(.white)
       
    }
}

struct SelectHeightView_Previews: PreviewProvider {
    @State static var height = 20.0
    static var previews: some View {
        SelectHeightView(height: $height)
    }
}
