//
//  WeatherButton.swift
//  weather_swiftui
//
//  Created by Abdur Rahman on 16/5/24.
//

import SwiftUI


struct WeatherButton: View {
    
    var title:String
    var textColor: Color
    var backgroundColor: Color
    
    
    
    var body: some View {
        Text(title)
            .frame(width: 288, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
