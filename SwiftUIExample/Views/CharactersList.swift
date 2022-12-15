//
//  CharactersList.swift
//  SwiftUIExample
//
//  Created by Konstantin Bolgar-Danchenko on 14.12.2022.
//

import SwiftUI

struct CharactersList: View {
    var body: some View {
        NavigationView {
            List(characters) { character in
                    
                NavigationLink {
                    CharacterDetails(character: character)
                } label: {
                    CharactersRow(character: character)
                }
                .listRowSeparator(.hidden)
            }
            .navigationTitle("Characters")
        }
    }
}

struct CharactersList_Previews: PreviewProvider {
    static var previews: some View {
        CharactersList()
    }
}
