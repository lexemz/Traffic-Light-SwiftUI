//
//  CircleView.swift
//  Traffic Light
//
//  Created by Igor on 27.10.2021.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100.0, height: 100.0)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 5)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .blue, opacity: 1.0)
    }
}
