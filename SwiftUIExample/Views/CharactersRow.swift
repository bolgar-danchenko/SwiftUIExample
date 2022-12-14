//
//  ListRow.swift
//  SwiftUIExample
//
//  Created by Konstantin Bolgar-Danchenko on 14.12.2022.
//

import SwiftUI

struct CharactersRow: View {
    
    var character: Character
    
    var body: some View {
        HStack {
            character.image
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 60)
                .padding(.leading, 15)
                .padding(.trailing, 15)
                .padding(.top, 5)
                .padding(.bottom, 5)
            VStack(alignment: .leading) {
                Text(character.name)
                Text(character.game)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
        .background(Color(.systemGray5))
        .cornerRadius(10)
    }
}

struct Characters_Previews: PreviewProvider {
    static var previews: some View {
        CharactersRow(character: characters[6])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
