//
//  ContentView.swift
//  iOS
//
//  Created by Oliver Calman on 19/5/2025.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            //call the show client session method
            CheckoutViewController.startUniversalCheckout(<#T##self: CheckoutViewController##CheckoutViewController#>)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
