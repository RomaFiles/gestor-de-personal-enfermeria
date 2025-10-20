import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "magnifyingglass")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Pantalla de Búsqueda")
                .font(.title)
            Text("Aquí irá el contenido de tu siguiente menú.")
                .foregroundStyle(.secondary)
        }
        .padding()
        .navigationTitle("Búsqueda")
    }
}

#Preview {
    NavigationStack { SearchView() }
}
