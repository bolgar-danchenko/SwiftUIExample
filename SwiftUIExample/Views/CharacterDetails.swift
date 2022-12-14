//
//  CharacterDetails.swift
//  SwiftUIExample
//
//  Created by Konstantin Bolgar-Danchenko on 14.12.2022.
//

import SwiftUI

struct CharacterDetails: View {
    var character: Character
    
    var body: some View {
        ScrollView {
            character.image
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 500)
                .shadow(radius: 10)
            
            VStack(alignment: .leading) {
                Text(character.name)
                    .font(.title)
                
                Text(character.game)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(character.name)")
                    .font(.title2)
                Text(character.description)
            }
            .padding()
        }
        .navigationTitle(character.name)
        .navigationBarTitleDisplayMode(.inline)
        .background(Color(.systemGray5))
    }
}

struct CharacterDetails_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetails(character: characters[0])
    }
}
