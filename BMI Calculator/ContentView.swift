//
//  ContentView.swift
//  BMI Calculator
//
//  Created by sanmi_personal on 08/03/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedGender : SelectedGender
    @State var isShowingResultView : Bool
    @State var weight: Int = 63
    @State var age: Int = 25
    @State var height: Double = 160
    var bmiCaculator : BMICalculator
    
    var body: some View {
        VStack {
            HStack{
                SelectGenderView(title: "male", iconName: "arrow.up", selectedGender: $selectedGender, action: {
                    selectedGender = SelectedGender.male
                },backgroundAction: {
                    selectedGender == SelectedGender.male ? Color.red : Color.black
                } )
                SelectGenderView(title: "female", iconName: "arrow.down",  selectedGender: $selectedGender, action: {
                    selectedGender = SelectedGender.female
                }, backgroundAction: {
                    selectedGender == SelectedGender.female ? Color.red : Color.black
                })
            }.padding()
            SelectHeightView(height: $height)
                .padding()
            HStack {
                AttributesView(amount : $weight, attributeName: "WEIGHT")
                AttributesView(amount: $age, attributeName: "AGE")
            }.padding()
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)

            CalculateButton(title: "CALCULATE", action: {
                isShowingResultView = true
                   bmiCaculator = BMICalculator(height: Int(height), weight: weight)
                    
                    bmiCaculator.calculateBMI()
            }).sheet(isPresented: $isShowingResultView, content: {
              
               
              ResultView(result: bmiCaculator.getResult(), intepretation: bmiCaculator.getInterpretation(), bmi: bmiCaculator.bmi)
            })
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selectedGender: SelectedGender.male, isShowingResultView: false, height:  100, bmiCaculator: <#T##BMICalculator#>)
    }
}
#endif
