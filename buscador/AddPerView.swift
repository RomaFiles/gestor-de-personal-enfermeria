//
//  AddPerView.swift
//  buscador
//
//  Created by Rodrigo Magaña Barocio on 21/10/25.
//

import SwiftUI

struct AddPerView: View {
    // Campos de texto para el primer paso
    @State private var nombres: String = ""
    @State private var apellidoPaterno: String = ""
    @State private var apellidoMaterno: String = ""
    @State private var curp: String = ""
    @State private var rfc: String = ""

    // currentStep controla qué "lámina" se muestra.
    // Si agregas más láminas:
    // 1) Declara una nueva vista/computed var para el paso (ver sección "Vistas de pasos").
    // 2) Agrega un branch en el ZStack para currentStep == <nuevo índice>.
    // 3) Actualiza el límite superior en el botón "Siguiente" (ver stepNavigationBar -> MAX_STEP).
    @State private var currentStep: Int = 0
    @State private var isNavigatingForward: Bool = true

    var body: some View {
        VStack(spacing: 0) {
            // Área de contenido que hace slide
            // Agrega aquí más "láminas" (pasos):
            // - Copia uno de los bloques `if currentStep == X { ... }` y ajusta el índice.
            // - Envuelve el contenido con `slidePane { ... }` para que la transición afecte a toda la lámina.
            // - Mantén la misma transición y añade un zIndex acorde al índice.
            ZStack {
                Group {
                    if currentStep == 0 {
                        slidePane { firstStepView }
                            .transition(
                                isNavigatingForward
                                ? .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
                                : .asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing))
                            )
                            .zIndex(currentStep == 0 ? 1 : 0)
                    } else if currentStep == 1 {
                        slidePane { personalDataStepView }
                            .transition(
                                isNavigatingForward
                                ? .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
                                : .asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing))
                            )
                            .zIndex(currentStep == 1 ? 1 : 0)
                    } else if currentStep == 2 {
                        slidePane { contactStepView }
                            .transition(
                                isNavigatingForward
                                ? .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
                                : .asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing))
                            )
                            .zIndex(currentStep == 2 ? 1 : 0)
                    } else if currentStep == 3 {
                        slidePane { workStepView }
                            .transition(
                                isNavigatingForward
                                ? .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
                                : .asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing))
                            )
                            .zIndex(currentStep == 3 ? 1 : 0)
                    } else if currentStep == 4 {
                        slidePane { educationStepView }
                            .transition(
                                isNavigatingForward
                                ? .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
                                : .asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing))
                            )
                            .zIndex(currentStep == 4 ? 1 : 0)
                    } else if currentStep == 5 {
                        slidePane { classificationStepView }
                            .transition(
                                isNavigatingForward
                                ? .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
                                : .asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing))
                            )
                            .zIndex(currentStep == 5 ? 1 : 0)
                    } else if currentStep == 6 {
                        slidePane { observationsStepView }
                            .transition(
                                isNavigatingForward
                                ? .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
                                : .asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing))
                            )
                            .zIndex(currentStep == 6 ? 1 : 0)
                    }
                }
            }
            .animation(.easeInOut, value: currentStep)
            .animation(.easeInOut, value: isNavigatingForward)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .padding()

            // Barra fija inferior (no hace slide)
            stepNavigationBar
                .padding(.horizontal)
                .padding(.vertical, 12)
                .background(Color(.systemBackground))
        }
        .navigationTitle("Agregar Personal")
    }

    // Contenedor para que la transición afecte a toda la "lámina".
    // No necesitas modificar esta función al agregar más pasos;
    // simplemente úsala como wrapper: `slidePane { tuPasoView }`.
    @ViewBuilder
    private func slidePane<Content: View>(@ViewBuilder _ content: () -> Content) -> some View {
        VStack(alignment: .leading, spacing: 0) {
            content()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .contentShape(Rectangle())
        .compositingGroup()
        .clipped()
    }

    // MARK: - Vistas de pasos
    // Agrega aquí más computed vars para cada nueva lámina, por ejemplo:
    // private var step2View: some View { ... }
    // y luego muéstrala en el ZStack con `slidePane { step2View }`.

    // Lámina 1: Identificación (ya existente como firstStepView)

    // Lámina 2: Datos personales
    private var personalDataStepView: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Identificación")
                .font(.title2).bold()
            // TODO: Campos de esta lámina
            Text("(Contenido pendiente)")
                .foregroundStyle(.secondary)
        }
    }

    // Lámina 3: Contacto
    private var contactStepView: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Contacto")
                .font(.title2).bold()
            // TODO: Campos de esta lámina
            Text("(Contenido pendiente)")
                .foregroundStyle(.secondary)
        }
    }

    // Lámina 4: Laborales
    private var workStepView: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Laborales")
                .font(.title2).bold()
            // TODO: Campos de esta lámina
            Text("(Contenido pendiente)")
                .foregroundStyle(.secondary)
        }
    }

    // Lámina 5: Formación
    private var educationStepView: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Formación")
                .font(.title2).bold()
            // TODO: Campos de esta lámina
            Text("(Contenido pendiente)")
                .foregroundStyle(.secondary)
        }
    }

    // Lámina 6: Clasificación
    private var classificationStepView: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Clasificación")
                .font(.title2).bold()
            // TODO: Campos de esta lámina
            Text("(Contenido pendiente)")
                .foregroundStyle(.secondary)
        }
    }

    // Lámina 7: Observaciones → Guardar
    private var observationsStepView: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Observaciones → Guardar")
                .font(.title2).bold()
            // TODO: Campos de esta lámina
            Text("(Contenido pendiente)")
                .foregroundStyle(.secondary)
        }
    }

    // MARK: - Primer Paso
    private var firstStepView: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Datos personales")
                .font(.title2).bold()
            Spacer(minLength: 8)

            // Título que entra por la derecha (parte de la vista con transition)
            Text("Nombre(s)")
                .font(.headline)

            TextField("Introduce el/los nombre(s)", text: $nombres)
                .textFieldStyle(.roundedBorder)
                .textInputAutocapitalization(.words)
                .autocorrectionDisabled()

            Text("Apellido Paterno")
                .font(.headline)

            TextField("Introduce el apellido paterno", text: $apellidoPaterno)
                .textFieldStyle(.roundedBorder)
                .textInputAutocapitalization(.words)
                .autocorrectionDisabled()

            Text("Apellido Materno")
                .font(.headline)

            TextField("Introduce el apellido materno", text: $apellidoMaterno)
                .textFieldStyle(.roundedBorder)
                .textInputAutocapitalization(.words)
                .autocorrectionDisabled()
            
            Text("C.U.R.P.")
                .font(.headline)

            TextField("Introduce el C.U.R.P.", text: $curp)
                .textFieldStyle(.roundedBorder)
                .textInputAutocapitalization(.words)
                .autocorrectionDisabled()
                // Pendiente agregar líneas que eviten agregar más de 18 dígitos
                // o si se exceden los 18 marque el borde del textfield rojo
            
            Text("R.F.C.")
                .font(.headline)

            TextField("Introduce el R.F.C.", text: $rfc)
                .textFieldStyle(.roundedBorder)
                .textInputAutocapitalization(.words)
                .autocorrectionDisabled()
                // Pendiente agregar líneas que eviten agregar más de 13 dígitos
                // o si se exceden los 13 marque el borde del textfield rojo

            // (sin barra ni spacer al final)
        }
        // Agregar una función que verifique si el curp y el rfc no excedan los 18 y 13
        // digitos respectivamente no permita avanzar de slide
    }

    // MARK: - Barra de navegación entre pasos
    private var stepNavigationBar: some View {
        HStack {
            Button(action: {
                guard currentStep > 0 else { return }
                isNavigatingForward = false
                withAnimation {
                    currentStep -= 1
                }
            }) {
                Image(systemName: "chevron.left")
                    .font(.system(size: 20, weight: .semibold))
                    .padding(10)
                    .background(
                        Circle().fill(Color.secondary.opacity(0.12))
                    )
            }
            .buttonStyle(.plain)
            .disabled(currentStep == 0)
            .opacity(currentStep == 0 ? 0.4 : 1)
            .accessibilityLabel("Atrás")

            Spacer()

            Button(action: {
                // IMPORTANTE: Actualiza el límite superior al agregar más pasos.
                // Define el último índice (MAX_STEP). Por ejemplo, si hay 3 láminas (0,1,2): MAX_STEP = 2
                let MAX_STEP = 6 // 7 láminas: índices 0...6
                isNavigatingForward = true
                withAnimation {
                    currentStep = min(currentStep + 1, MAX_STEP)
                }
            }) {
                Image(systemName: "chevron.right")
                    .font(.system(size: 20, weight: .semibold))
                    .padding(10)
                    .background(
                        Circle().fill(Color.accentColor.opacity(0.12))
                    )
            }
            .buttonStyle(.plain)
            .accessibilityLabel("Siguiente")
        }
    }
}
// Nota: La barra inferior (stepNavigationBar) es fija y reutilizable para todos los pasos.
// No la dupliques dentro de cada lámina; se mantiene fuera del ZStack para que no haga slide.

// Vista Prueba de la navegación
#Preview {
    NavigationStack { AddPerView() }
}
