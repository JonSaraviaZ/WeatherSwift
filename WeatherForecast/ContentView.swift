//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Jonathan Saravia Zurita on 21-04-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", isRainy: false, high: 70, low: 50 )
            DayForecast(day: "Tue", isRainy: true, high: 60, low: 50 )
            
            /*VStack {
                Text("Tue")
                Image(systemName: "cloud.rain.fill")
                    .foregroundStyle(Color.blue)
                Text("High: 60")
                Text("Low: 40")
            }
            .padding()*/
        }
    }
}

struct DayForecast: View {
    
    let day: String //Para declarar una propiedad hay que usar la palabra clave let
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String // Una pequeña lógica con booleanos para que se depsliegue un icono de soleado o lluvioso, y también para que se le aplique un color amarillo o azul
    {
        isRainy ? "cloud.rain.fill" : "sun.max.fill"
    }
    
    var iconColor: Color {
        isRainy ? Color.blue : Color.yellow
    }
    
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline) // Así puedo darle cierto estilo a los textos con fuentes
            Image(systemName:iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5) //un espaciado con padding
            Text("High: \(high)")
                .fontWeight(Font.Weight.semibold)// Así puedo darle cierto estilo a los textos con fuentes
            Text("Low: \(low)")
                .fontWeight(Font.Weight.medium)// Así puedo darle cierto estilo a los textos con fuentes
                .foregroundStyle(Color.secondary) //También puedo utilizar de esta manera ciertos estilos de color a los textos
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
