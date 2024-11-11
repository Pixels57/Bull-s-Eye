//
//  TextViews.swift
//  Bullseye
//
//  Created by Pixels on 05/09/2024.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .kerning(2.0)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .fontWeight(.black)
            .kerning(-1.0)
            .font(.largeTitle)
            .foregroundColor(Color("TextColor"))
    }
}

struct smallNumberText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .foregroundColor(Color("TextColor"))
            .font(.title3)
    }
}

struct LabelText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .foregroundColor(Color("TextColor"))
            .multilineTextAlignment(.center)
            .font(.caption)
            .kerning(1.5)
    }
}

struct BodyText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.subheadline)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .lineSpacing(12)
    }
}

struct ScoreText: View {
    var score: Int
    var body: some View {
        Text(String(score))
            .bold()
            .font(.title3)
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
    }
}

struct DateText: View {
    var date: Date
    var body: some View {
        Text(date, style: .time)
            .bold()
            .font(.title3)
            .kerning(-0.2)
            .foregroundColor(Color("TextColor"))
    }
}

struct ButtonText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.headline)
            .bold()
            .foregroundColor(Color(.white))
            .multilineTextAlignment(.center)
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                
                Color.accentColor
            )
            .cornerRadius(12)
    }
}

struct BigBoldText: View {
    var text: String
    var body: some View{
        Text(text.uppercased())
            .font(.title)
            .fontWeight(.black)
            .kerning(2)
            .foregroundColor(Color("TextColor"))
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "INSTRUCTIONS")
            BigNumberText(text: "999")
            smallNumberText(text: "10")
            LabelText(text: "SCORE")
            BodyText(text: "You Scored 200 points\n 💪💪💪")
            ButtonText(text: "Start New Round")
            ScoreText(score: 459)
            DateText(date: Date())
            BigBoldText(text: "Leaderboard")
        }
        .padding()
    }
}
