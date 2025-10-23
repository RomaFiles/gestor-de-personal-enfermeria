//
//  DelPerView.swift
//  buscador
//
//  Created by Rodrigo Magaña Barocio on 21/10/25.
//


import SwiftUI

struct DelPerView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "magnifyingglass")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Pantalla para eliminar personal")
                .font(.title)
            Text("Aquí se va a mostrar el buscador para eliminar personal")
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding()
        .navigationTitle("Eliminar Personal")
        // hace que se vea pequeño el texto titulo de la navegación
        //.navigationBarTitleDisplayMode(.inline)
    }
}
// Vista Prueba de la navegación
#Preview {
    NavigationStack { DelPerView() }
}
