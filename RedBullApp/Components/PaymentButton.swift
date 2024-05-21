//
//  PaymentButton.swift
//  RedBullApp
//
//  Created by Serenay Güneş on 27.04.2024.
//

import SwiftUI
import PassKit

struct PaymentButton: View {
    var action: () -> Void
    var body: some View {
        Representable(action: action)
            .frame(minWidth: 100, maxWidth: 400)
            .frame(height: 45)
            .frame(maxWidth: .infinity)
    }
}

struct PaymentButton_Previews: PreviewProvider {
    static var previews: some View {
        PaymentButton(action: {})
    }
}

extension PaymentButton {
    struct Representable: UIViewRepresentable {
        var action: () -> Void
        
        func makeCoordinator() -> Coordinator {
            Coordinator(action: action)
        }
        
        func makeUIView(context: Context) -> some UIView {
            context.coordinator.button
        }
        
        func updateUIView(_ uiView: UIViewType, context: Context) {
            context.coordinator.action = action
        }
    }
    
    class Coordinator: NSObject {
        var action: () -> Void
        var button = PKPaymentButton(paymentButtonType: .checkout, paymentButtonStyle: .automatic)
        
        init(action: @escaping () -> Void){
            self.action = action
            super.init()
            
            button.addTarget(self, action:
                #selector(callback(_:)), for:
                .touchUpInside)
        }
        
        @objc
        func callback(_ sender: Any) {
            action()
            
            let alert = UIAlertController(title: "Siparişiniz Alındı", message: "Siparişiniz başarıyla alındı!", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
                        
                        // UIApplication.shared.topViewController() ile en üstteki view controller'a erişebiliriz
                        UIApplication.shared.topViewController()?.present(alert, animated: true, completion: nil)
        
        }
    }
}


extension UIApplication {
    func topViewController() -> UIViewController? {
        guard var topViewController = UIApplication.shared.windows.first?.rootViewController else {
            return nil
        }
        while let presentedViewController = topViewController.presentedViewController {
            topViewController = presentedViewController
        }
        return topViewController
    }
}

