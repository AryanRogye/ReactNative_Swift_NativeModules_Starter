import SwiftUI

class ModalController: ObservableObject {
  @Published var showModal: Bool = false
}

struct ModalView: View {
  var message: String
  
  var body: some View {
    VStack {
      Text(message)
        .font(.largeTitle)
        .padding()
      
      Button("Dismiss") {
        UIApplication.shared.connectedScenes
          .compactMap { ($0 as? UIWindowScene)?.keyWindow }
          .first?.rootViewController?
          .dismiss(animated: true, completion: nil)
      }
      .padding()
    }
  }
}

#Preview {
  ModalView(message: "hello")
}
