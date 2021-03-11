//
//  BMI_CalculatorApp.swift
//  BMI Calculator
//
//  Created by sanmi_personal on 08/03/2021.
//

import SwiftUI

@main
struct BMI_CalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(selectedGender: SelectedGender.male, isShowingResultView: false)
        }
    }
}
