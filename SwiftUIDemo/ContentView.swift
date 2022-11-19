//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Нияз Нуруллин on 12.11.2022.
//

import SwiftUI

struct Universe: Identifiable {
    var id: String {
        name
    }
    let name: String
    let color: Color
}

struct ContentView: View {

    @State private var isPushEnabled = false
    @State private var speed = 50.0
    @State private var sliderIsEdited = false
    @State private var selectedUniverse: Universe?
    @State private var universeIsSelected = false

    var body: some View {

        NavigationView {
            List {
                Section {
                    Toggle(isOn: $isPushEnabled) {
                        Text("Включить 1")
                    }
                    Toggle(isOn: $isPushEnabled) {
                        Text("Включить 2")
                    }
                } header: {
                    Text("Секция №1")
                        .font(.system(size: 17, weight: .bold))
                        .foregroundColor(Color.blue)
                }

                Section {
                    Toggle(isOn: $isPushEnabled) {
                        Text("Включить 3")
                    }
                }

                Section {
                    VStack {
                        Slider(value: $speed, in: 0...100) { editing in
                            sliderIsEdited = editing
                        }
                        Text("\(speed)")
                            .foregroundColor(sliderIsEdited ? .blue : .green)
                    }
                }

                Section {
                    VStack {
                        Text("А на какой стороне ты?")
                        Spacer()
                        HStack() {
                            Spacer()
                            Button("Marvel") {
                                debugPrint("Marvel")
                                selectedUniverse = .init(name: "Marvel", color: .red)
                                universeIsSelected = true
                            }
                            .buttonStyle(BorderlessButtonStyle()) // иначе тригер всей секции и всех кнопок в ней
                            Spacer()
                            Button("DC") {
                                debugPrint("DC")
                                selectedUniverse = .init(name: "DC", color: .blue)
                                universeIsSelected = true
                            }
                            .buttonStyle(BorderlessButtonStyle())
                            Spacer()
                        }
                        .alert(item: $selectedUniverse) { universe in
                            Alert(title: Text(universe.name), message: Text("Вы сделали свой выбор"), dismissButton: .default(Text("OK")))
                        }
                    }
                    .background(universeIsSelected ? selectedUniverse?.color : .white)
                }
            }
            .navigationTitle("Homepage")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
