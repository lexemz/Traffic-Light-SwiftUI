//
//  ContentView.swift
//  Traffic Light
//
//  Created by Igor on 27.10.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var redState = 0.3
    @State private var yellowState = 0.3
    @State private var greenState = 0.3
    
    @State private var currentLight = ActiveLight.none
    @State private var buttonTitle = "Start"
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                trafficLight
                Spacer()
                button
            }
            .padding(.top, 100)
            .padding(.bottom, 20)
        }
    }
    
    private var trafficLight: some View {
        VStack(spacing: 10) {
            CircleView(color: .red, opacity: redState)
            CircleView(color: .yellow, opacity: yellowState)
            CircleView(color: .green, opacity: greenState)
        }
    }
    
    private var button: some View {
        Button(action: buttonTapped) {
            Text(buttonTitle)
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity)
                .font(.system(size: 18))
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(Capsule())
                .padding()
        }
    }
    
    private func buttonTapped() {
        let lightIsOff = 0.3
        let lightIsOn = 1.0

        switch currentLight {
        case .none:
            buttonTitle = "Next"
            
            redState = lightIsOn
            currentLight = .red
        case .red:
            redState = lightIsOff
            yellowState = lightIsOn
            currentLight = .yellow
        case .yellow:
            yellowState = lightIsOff
            greenState = lightIsOn
            currentLight = .green
        case .green:
            greenState = lightIsOff
            redState = lightIsOn
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    enum ActiveLight {
        case none, red, yellow, green
    }
}
