//
//  PointsView.swift
//  Bullseye
//
//  Created by Pixels on 28/09/2024.
//

import SwiftUI

struct PointsView: View {
    @Binding var sliderValue: Double
    @Binding var alertIsVisible: Bool
    @Binding var game: Game
    
    var body: some View {
        let roundedValue = Int(sliderValue.rounded())
        let points = game.points(sliderValue: roundedValue)
        VStack(spacing: 10) {
            InstructionText(text: "The Slider's value is".uppercased())
            BigNumberText(text: String(roundedValue))
            BodyText(text: "You scored \(points) Points\n 💪💪💪")
            Button {
                withAnimation {
                    alertIsVisible = false
                }
                game.startNewRound(points: points)
            } label: {
                ButtonText(text: "Start New Round")
            }
        }
        .padding()
        .frame(maxWidth: 300)
        .background(Color("BackgroundColor"))
        .cornerRadius(Constants.General.roundRectCornerRadius)
        .shadow(radius: 10, x: 5, y: 5)
    }
}

struct PointsView_Previews: PreviewProvider {
    static private var alertIsVisible = Binding.constant(false)
    static private var sliderValue = Binding.constant(50.0)
    static private var game = Binding.constant(Game())
    static var previews: some View {
        PointsView(sliderValue: sliderValue, alertIsVisible: alertIsVisible, game: game)
        PointsView(sliderValue: sliderValue, alertIsVisible: alertIsVisible, game: game)
            .previewInterfaceOrientation(.landscapeRight)
            .preferredColorScheme(.dark)
    }
}
