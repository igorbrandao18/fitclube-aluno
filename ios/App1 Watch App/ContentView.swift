import SwiftUI
import WatchConnectivity

struct ContentView: View {
    @State private var receivedEmail = "No email yet" // Atualizado para armazenar o email
    private var sessionDelegate = WatchSessionDelegate()

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(receivedEmail) // Exibe o email recebido
        }
        .padding()
        .onAppear {
            setupWatchConnectivity()
            sessionDelegate.messageHandler = { email in
                DispatchQueue.main.async {
                    self.receivedEmail = email
                }
            }
        }
    }
    
    private func setupWatchConnectivity() {
        if WCSession.isSupported() {
            let session = WCSession.default
            session.delegate = sessionDelegate
            session.activate()
        }
    }
}

// Classe para gerenciar a sessão de WatchConnectivity
class WatchSessionDelegate: NSObject, WCSessionDelegate {
    var messageHandler: ((String) -> Void)?

    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        if let receivedEmail = message["email"] as? String { // Espera o campo "email"
            print("Email recebido no Watch: \(receivedEmail)")
            messageHandler?(receivedEmail)
        }
    }
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        // Lida com a ativação da sessão
        if let error = error {
            print("Erro ao ativar WCSession no Watch: \(error.localizedDescription)")
        } else {
            print("WCSession ativado no Watch com estado: \(activationState.rawValue)")
        }
    }

    #if os(iOS)
    func sessionDidBecomeInactive(_ session: WCSession) {
        // Implementação opcional para iOS
        print("WCSession ficou inativo no iOS")
    }

    func sessionDidDeactivate(_ session: WCSession) {
        // Implementação opcional para iOS
        print("WCSession desativado no iOS")
    }
    #endif
}
