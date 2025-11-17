//
//  ContentView.swift
//  WeatherForecast
//
//  Created by 李润龙 on 17/11/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            DayForecast(day:"Mon", isRainy: false, high: 70, low: 50);
            
            DayForecast(day:"Tue", isRainy: true, high:60, low: 40);
        }
    }
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        return isRainy ? "cloud.rain.fill" : "sun.max.fill"
    }
    
    var iconColor: Color {
        return isRainy ? Color.blue : Color.yellow
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            if (isRainy){
                Image(systemName:iconName)
                    .foregroundStyle(iconColor)
                    .font(Font.largeTitle)
                    .padding(5)
            } else {
                Image(systemName:iconName)
                    .foregroundStyle(iconColor)
                    .font(Font.largeTitle)
                    .padding(5)
            }

            Text("High: \(high)")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)")
                .fontWeight(Font.Weight.medium)
    
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
