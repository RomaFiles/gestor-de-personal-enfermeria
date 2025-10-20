//
//  ContentView.swift
//  buscador
//
//  Created by Rodrigo Magaña Barocio on 20/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                Image(systemName: "cross.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .tint(.red)
                Text("ISSSTE Control de Personal")

                NavigationLink {
                    MainMenu()
                } label: {
                    HStack(spacing: 8) {
                        Image(systemName: "play.fill")
                        Text("Iniciar")
                    }
                    .font(.headline)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 10)
                    .background(
                        ZStack {
                            RoundedRectangle(cornerRadius: 14)
                                .fill(.ultraThinMaterial)
                            LinearGradient(
                                colors: [Color.white.opacity(0.25), .clear],
                                startPoint: .top, endPoint: .center
                            )
                            .blendMode(.plusLighter)
                            .clipShape(RoundedRectangle(cornerRadius: 14))
                        }
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 14)
                            .strokeBorder(.white.opacity(0.25), lineWidth: 1)
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 14))
                    .shadow(color: .black.opacity(0.1), radius: 10, y: 4)
                }
                .buttonStyle(.plain)
                .padding(.top, 8)
            }
            .padding()
            .navigationTitle("Inicio")
        }
    }
}

#Preview {
    ContentView()
}
