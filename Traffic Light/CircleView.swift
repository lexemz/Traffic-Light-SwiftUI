//
//  CircleView.swift
//  Traffic Light
//
//  Created by Igor on 27.10.2021.
//

import SwiftUI

struct CircleView: View {
    let foregroundColor: Color
    
    var body: some View {
        Circle()
            .frame(width: 100.0, height: 100.0)
            .foregroundColor(foregroundColor)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 5)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(foregroundColor: .yellow)
    }
}
