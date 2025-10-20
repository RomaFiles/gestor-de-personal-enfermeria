//
//  MainMenu.swift
//  buscador
//
//  Created by Rodrigo Magaña Barocio on 20/10/25.
//

import SwiftUI

struct MainMenu: View {
    @State private var irABusqueda = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("ISSSTE_logo")
                    .resizable()
                    .scaledToFit()

                // Acciones principales en una fila
                HStack(spacing: 12) {
                    // Agregar
                    NavigationLink {
                        SearchView()
                    } label: {
                        HStack {
                            Image(systemName: "plus")
                            Text("Agregar")
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

                    // Eliminar
                    NavigationLink {
                        SearchView()
                    } label: {
                        HStack {
                            Image(systemName: "minus")
                            Text("Eliminar")
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
                }
                .padding(.top, 16)
                
                
                // Buscar
                NavigationLink {
                    SearchView()
                } label: {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Text("Buscar")
                    }
                    .foregroundStyle(.primary)
                }
                .buttonStyle(.plain)
                .padding(.top, 16)
            }
            .navigationTitle("Menú Principal")
            .padding()
        }
    }
}
#Preview {
    ContentView()
}

