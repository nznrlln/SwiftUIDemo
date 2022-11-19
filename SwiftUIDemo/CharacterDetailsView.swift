//
//  CharacterDetail.swift
//  SwiftUIDemo
//
//  Created by Нияз Нуруллин on 19.11.2022.
//

import SwiftUI

struct CharacterDetailsView: View {

    var character: CharacterModel
    
    let imageWidth: CGFloat = UIScreen.main.bounds.width / 1.5
    let imageHeight: CGFloat = UIScreen.main.bounds.width / 1.5

    var body: some View {
        VStack {
            Rectangle()
                .fill(Color.init(red: 0.6, green: 0.6, blue: 0.6))
                .ignoresSafeArea(edges: .top)
                .frame(height: 150)

            Image(character.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: imageWidth, height: imageHeight)
                .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.red, lineWidth: 5))
                .offset(y: -140)
                .padding(.bottom, -140)

            VStack(alignment: .leading) {
                Text(character.name)
                    .font(.title)

                Text(character.origin)
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(character.name)")
                    .font(.title2)
                Text(character.description)
            }
            .padding()

            Spacer()
        }
    }
}

struct CharacterDetail_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailsView(character: CharacterModel(name: "Kratos", origin: "", imageName: "Kratos", description: ""))
    }
}
