//
//  ContentView.swift
//  weather_swiftui
//
//  Created by Abdur Rahman on 9/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: Color.lightBlue)
            
            VStack{
           
                CityTextView(cityName: "Cupertino, CA")
                
                MainWeatherStatusView(weatherImage: "cloud.sun.fill", temperature: 76)
                
                
              
                .padding(.bottom,40)
            
                HStack(spacing:20){
                   WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.fill", temperature: 46)
                    
                    WeatherDayView(dayOfWeek: "Wed", imageName: "wind.snow", temperature: 46)
                    
                    WeatherDayView(dayOfWeek: "Fri", imageName: "cloud.sun.fill", temperature: 46)
                    WeatherDayView(dayOfWeek: "Sat", imageName: "sunset.fill", temperature: 46)
                    WeatherDayView(dayOfWeek: "Sun", imageName: "cloud.sun.rain.fill", temperature: 46)
                    
                }

                  Spacer()
                
                
                Button(action: {
                    print("Tapped")
                }, label: {
                    WeatherButton(title: "Change Day time", textColor: .blue, backgroundColor: .white)
                })
                
                Spacer()
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    
    var imageName: String
    
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {

        LinearGradient(gradient: Gradient(colors: [topColor,bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CityTextView:View {
    
    var cityName:String
    
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var weatherImage:String
    
    var temperature : Int
    
    var body: some View {
        VStack(spacing:10){
            Image(systemName: weatherImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium, design: .default))
                .foregroundColor(.white)

        }
    }
}

