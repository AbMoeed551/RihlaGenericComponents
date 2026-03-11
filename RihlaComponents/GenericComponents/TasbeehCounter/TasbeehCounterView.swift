//
//  TasbeehCounterView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 09/03/2026.
//


import SwiftUI

struct DhikrOption: Identifiable, Equatable {
    let id = UUID()
    let title: String
    let dailyGoal: Int
}

// MARK: - Style Models

struct TasbeehCounterStyle {
    let dhikrOptions: [DhikrOption]
    let onArrowTap: () -> Void

    init(
        dhikrOptions: [DhikrOption] = [
            .init(title: "Alhamdulillah", dailyGoal: 120),
            .init(title: "Allahu Akbar",  dailyGoal: 99),
            .init(title: "Subhan Allah",  dailyGoal: 33)
        ],
        onArrowTap: @escaping () -> Void = {}
    ) {
        self.dhikrOptions  = dhikrOptions
        self.onArrowTap    = onArrowTap
    }
}



struct TasbeehCounterView: View {
    var style: TasbeehCounterStyle
    @State private var selectedOption: DhikrOption
    @State private var count: Int = 0
    init(style: TasbeehCounterStyle = .init()) {
        self.style = style
        _selectedOption = State(initialValue: style.dhikrOptions.first ?? .init(title: "Alhamdulillah", dailyGoal: 120))
    }
    private var remaining: Int {
        max(selectedOption.dailyGoal - count, 0)
    }
    private var progress: Double {
        min(Double(count) / Double(max(selectedOption.dailyGoal, 1)), 1)
    }
    var body: some View {
        VStack(spacing: 0) {

            HStack {
                SemiBoldText(style: .init(text: selectedOption.title, textColor: .black, textSize: 20))
                Spacer()
                CircleIconView(style: .init(width: 44, height: 44, backGroundColor: .lightGray, image: "arrowRightRound", imageColor: .black, imageWidth: 20, imageHeight: 20, action: {style.onArrowTap()}))
            }
            .padding()

            TasbeehRingView(
                count: count,
                remaining: remaining,
                progress: progress,
            )
            
            .frame(width: 228, height: 228)
            .padding(.top, 24)
            // MARK: Daily Goal
            MeduimText(style: .init(text: "Daily Goal: \(selectedOption.dailyGoal)", size: 13, color: .darkGray))

            // MARK: Divider
            Divider()
                .padding(.horizontal, 20)
                .padding(.vertical, 20)

            // MARK: Dhikr Options Label

            MeduimText(style: .init(text: "Dhikr Options", size: 13, color: .darkGray))

            // MARK: Dhikr Pill Buttons
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(style.dhikrOptions) { option in
                        DhikrPillButtonView(style: .init(title: option.title, isSelected: option == selectedOption, action: {
                            selectedOption = option
                            count = 6
                        }))
                    }
                }
            }
            .padding()
        }
        
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: .black.opacity(0.07), radius: 12, x: 0, y: 4)
    }
}

struct TasbeehRingView: View {
    let count: Int
    let remaining: Int
    let progress: Double
    private let startAngle: Double = 135
    private let totalArc: Double   = 270
    var body: some View {
        ZStack {
            Arc(startAngle: startAngle,
                endAngle: startAngle + totalArc,
                clockwise: true)
                .stroke(
                    Color.lightGray,
                    style: StrokeStyle(lineWidth: 18, lineCap: .round)
                )
            Arc(startAngle: startAngle,
                endAngle: startAngle + totalArc * progress,
                clockwise: true)
                .stroke(
                    Color.jungleGreen,
                    style: StrokeStyle(lineWidth: 18, lineCap: .round)
                )
                .animation(.easeInOut(duration: 0.3), value: progress)
            Circle()
                .fill(Color.lightGray)
                .padding(22)

            VStack(spacing: 4) {
                SemiBoldText(style: .init(text: "\(count)", textColor: .jungleGreen, textSize: 39))
                MeduimText(style: .init(text: "\(remaining) Remaining", size: 13, color: .black))
            }
        }
    
    }
}

struct Arc: Shape {
    let startAngle: Double  // degrees
    var endAngle: Double    // degrees
    let clockwise: Bool
    var animatableData: Double {
        get { endAngle }
        set { endAngle = newValue }
    }

    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(
            center: CGPoint(x: rect.midX, y: rect.midY),
            radius: rect.width / 2,
            startAngle: .degrees(startAngle),
            endAngle: .degrees(endAngle),
            clockwise: !clockwise  // SwiftUI mein Y-axis ulta hota hai
        )
        return path
    }
}

// MARK: - Preview

#Preview {
    TasbeehCounterView(
        style: .init(
            dhikrOptions: [
                .init(title: "Alhamdulillah", dailyGoal: 120),
                .init(title: "Allahu Akbar",  dailyGoal: 99),
                .init(title: "Subhan Allah",  dailyGoal: 33)
            ],
            onArrowTap: { print("Arrow tapped") }
        )
    )
    //.padding(20)
    .background(Color(.systemGroupedBackground))
}
