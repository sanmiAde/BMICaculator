//
//  SelectGenderView.swift
//  BMI Calculator
//
//  Created by sanmi_personal on 08/03/2021.
//

import SwiftUI

struct SelectGenderView: View {
    
    var title : String
    var iconName: String
    @Binding var selectedGender : SelectedGender
    var action : () -> Void
    var backgroundAction : () -> Color

    
    var body: some View {
        Button(action: action, label: {
            VStack(spacing: 10){
                Image(systemName: iconName).foregroundColor(.white)
                Text(title.capitalized)
                    .foregroundColor(.gray)
            }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(backgroundAction())
        }).cornerRadius(10)
    }
}

enum SelectedGender {
    case male
    case female
}

#if DEBUG

struct SelectGenderView_Previews: PreviewProvider {
    @State static var selectedGender : SelectedGender = SelectedGender.female
    
    static var previews: some View {
        
        SelectGenderView(title: "MALE", iconName: "arrow.up", selectedGender: $selectedGender, action:  {}, backgroundAction: {Color.red} )
    }
}
#endif
