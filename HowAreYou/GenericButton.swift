//
//  GenericButton.swift
//  HowAreYou
//
//  Created by coltec on 16/05/23.
//

import SwiftUI

struct GenericButton: View {
    
    var action: () -> Void
    var image: String = ""
    var color: Color = .black
    var text: String = ""
    
    var body: some View {
        VStack{
            
            
            Button{
                action()
            }
                label: {
                    VStack{
                        Image(image)
                            .renderingMode(.template)
                            .foregroundColor(color)
                            .frame(width: 40, height: 40, alignment: .center)
                        Text(text)
                            .foregroundColor(color)
                            .dynamicTypeSize(.xSmall)
                    }
                }
        }
    }
}

struct GenericButton_Previews: PreviewProvider {
    static var previews: some View {
        GenericButton(action: {}, image: "Mood1", color: .red, text: "Padrão" )
    }
}
