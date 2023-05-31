//
//  ContentView.swift
//  HowAreYou
//
//  Created by coltec on 16/05/23.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var date: Date = .now
    
    var body: some View {
        
        VStack{
            HStack{
                Text("Como você está?")
                    .foregroundColor(.brown)
                    .dynamicTypeSize(.xxxLarge)
            }.padding(.bottom, 50)
            HStack{
                DatePicker("Data", selection: $date)
            }.padding(.bottom, 50)
            HStack{
                GenericButton(action: {}, image: "Mood1", color: .yellow, text: "Radiante")
                GenericButton(action: {}, image: "Mood2", color: .green, text: "Bem")
                GenericButton(action: {}, image: "Mood3", color: .purple, text: "Neutro")
                GenericButton(action: {}, image: "Mood4", color: .blue, text: "Mal")
                GenericButton(action: {}, image: "Mood5", color: .gray, text: "Horrivel")
            }
            
        }
        .padding(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


