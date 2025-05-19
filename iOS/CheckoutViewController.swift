//
//  MyViewController.swift
//  iOS
//
//  Created by Oliver Calman on 19/5/2025.
//

import Foundation
import UIKit
import SwiftUI
import PrimerSDK

class CheckoutViewController: UIViewController, PrimerDelegate {
    private let message: String = "An error occurred. Please try again later."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Initialize the SDK with the default settings.
        Primer.shared.configure(delegate: self)
    }
    
    //Action when the checkout is successful
    func primerDidCompleteCheckoutWithData(_ data: PrimerCheckoutData) {
        // Primer checkout completed with data
        // do something...
    }
    
    //Action when the checkout is unsuccessful
    func primerDidFailWithError(_ error: Error, data: PrimerCheckoutData?, decisionHandler: @escaping ((PrimerErrorDecision) -> Void)) {
        // 👇 Call the decision handler to show a failure message
        decisionHandler(.fail(withErrorMessage: message))
    }
    
    func startUniversalCheckout() {
        Primer.shared.showUniversalCheckout(clientToken: self.clientToken)
    }
}
