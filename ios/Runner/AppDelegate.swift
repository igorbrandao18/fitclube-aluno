import UIKit
import Flutter
import WatchConnectivity

@main
@objc class AppDelegate: FlutterAppDelegate, WCSessionDelegate {
  // Define o nome do canal
  private let CHANNEL = "com.example.methodchannel/messages"

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    // Configuração do WCSession para comunicação com o Apple Watch
    if WCSession.isSupported() {
      let session = WCSession.default
      session.delegate = self
      session.activate()
    }

    if let controller = window?.rootViewController as? FlutterViewController {
        let methodChannel = FlutterMethodChannel(name: CHANNEL, binaryMessenger: controller.binaryMessenger)
        
        // Configuração do handler para o método 'sendMessage'
        methodChannel.setMethodCallHandler({ (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
            if call.method == "sendMessage" {
                if let message = call.arguments as? String {
                    // Lógica para enviar a mensagem ao Apple Watch
                    if WCSession.default.isReachable {
                        WCSession.default.sendMessage(["email": message], replyHandler: nil, errorHandler: { error in
                            print("Erro ao enviar mensagem para o Apple Watch: \(error)")
                        })
                    }
                    result("Mensagem enviada ao Watch: \(message)")
                } else {
                    result(FlutterError(code: "INVALID_ARGUMENT", message: "Argumento inválido", details: nil))
                }
            } else {
                result(FlutterMethodNotImplemented)
            }
        })
    } else {
        print("Erro: Não foi possível obter o FlutterViewController.")
    }

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
  
  // Métodos obrigatórios do WCSessionDelegate
  func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
    // Handle session activation
  }

  func sessionDidBecomeInactive(_ session: WCSession) {}
  
  func sessionDidDeactivate(_ session: WCSession) {}
}
