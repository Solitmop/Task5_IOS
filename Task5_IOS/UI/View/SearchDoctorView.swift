//
//  SearchDoctorView.swift
//  Task5_IOS
//
//  Created by Roman Zyuzin on 24.09.2026.
//


import SwiftUI

struct SearchDoctorView: View {
    var body: some View {
        Button(
            action:{
                print(BaseText.searchButtonClick)
            }
        ){
            HStack(
                spacing: BaseNumeral.paddingAfterSearchIcon
            ){
                Image.searchDoctor
                    .accessibilityHidden(true)
                Text(BaseText.searchButtonText)
                    .foregroundColor(BaseColors.SearchFieldPrimary)
                    .accessibilityHidden(true)
            }
            Spacer()
        }
        .padding(BaseNumeral.paddingInsideSearchButton)
        .background(BaseColors.SearchFieldBackground)
        .cornerRadius(BaseNumeral.buttonCorner)
        .accessibilityLabel(BaseText.searchButtonText)
    }
}
