//
//  ResultView.swift
//  BMI Calculator
//
//  Created by sanmi_personal on 11/03/2021.
//

import SwiftUI

struct ResultView: View {
    var result: String
    var intepretation: String
    var bmi: Double
    
    
    var body: some View {
        VStack {
            Text(result)
                .padding()
            Text(String(bmi))
                .padding()
            Text (intepretation)
                .padding()
            CalculateButton(title: "RE-CACULATE", action: {})
                .padding()
        
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(result: "Overweight", intepretation: "You have a higher than normal body weight. Try to exercise more.", bmi: 20.0)
    }
}
