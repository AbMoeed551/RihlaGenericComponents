//
//  TasbeehCounterView.swift
//  RihlaComponents
//
//  Created by Abdul Moeed on 09/03/2026.
//

//import SwiftUI
//
//struct TasbeehCounterView: View {
//    var body: some View {
//        VStack{
//            HStack{
//                SemiBoldText(style: .init(text: "Alhamdulillah", textColor: .black, textSize: 20))
//                Spacer()
//                CircleIconView(style: .init(width: 44, height: 44, backGroundColor: .lightGray, image: "arrowRightRound", imageColor: .black, imageWidth: 20, imageHeight: 20, action: {}))
//            }
//        }
//    
//    }
//}
//
//#Preview {
//    TasbeehCounterView()
//}
//
//  TasbeehCounterView.swift
//  RihlaComponents
//

import SwiftUI

// MARK: - Models

struct DhikrOption: Identifiable, Equatable {
    let id = UUID()
    let title: String
    var dailyGoal: Int
}

// MARK: - Style Models

struct TasbeehCounterStyle {
    var dhikrOptions: [DhikrOption]
    var onArrowTap: () -> Void

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

// MARK: - Main View

struct TasbeehCounterView: View {

    var style: TasbeehCounterStyle

    @State private var selectedOption: DhikrOption
    @State private var count: Int = 0

    init(style: TasbeehCounterStyle = .init()) {
        self.style = style
        _selectedOption = State(initialValue: style.dhikrOptions.first ?? .init(title: "Alhamdulillah", dailyGoal: 120))
    }

    // Derived
    private var remaining: Int { max(selectedOption.dailyGoal - count, 0) }
    private var progress: Double {
        guard selectedOption.dailyGoal > 0 else { return 0 }
        return min(Double(count) / Double(selectedOption.dailyGoal), 1.0)
    }

    var body: some View {
        VStack(spacing: 0) {

            // MARK: Header
            HStack {
                Text(selectedOption.title)
                    .font(.system(size: 22, weight: .semibold))
                    .foregroundColor(.black)

                Spacer()

                CircleIconView(style: .init(width: 44, height: 44, backGroundColor: .lightGray, image: "arrowRightRound", imageColor: .black, imageWidth: 20, imageHeight: 20, action: {}))
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            .padding(.bottom, 28)

            // MARK: Circular Progress Ring
            TasbeehRingView(
                count: count,
                remaining: remaining,
                progress: progress,
                onTap: handleTap
            )
            .frame(width: 220, height: 220)

            // MARK: Daily Goal
            Text("Daily Goal: \(selectedOption.dailyGoal)")
                .font(.system(size: 16, weight: .regular))
                .foregroundColor(.black.opacity(0.7))
                .padding(.top, 24)

            // MARK: Divider
            Divider()
                .padding(.horizontal, 20)
                .padding(.vertical, 20)

            // MARK: Dhikr Options Label
            Text("Dhikr Options")
                .font(.system(size: 16, weight: .regular))
                .foregroundColor(.black.opacity(0.7))
                .padding(.bottom, 14)

            // MARK: Dhikr Pill Buttons
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(style.dhikrOptions) { option in
                        DhikrPillButton(
                            title: option.title,
                            isSelected: option == selectedOption,
                            action: {
                                selectedOption = option
                                count = 0
                            }
                        )
                    }
                }
                .padding(.horizontal, 20)
            }

            Spacer(minLength: 24)
        }
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.07), radius: 12, x: 0, y: 4)
    }

    // MARK: - Actions
    private func handleTap() {
        if count < selectedOption.dailyGoal {
            count += 1
        }
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
    }
}

// MARK: - Ring View

struct TasbeehRingView: View {
    let count: Int
    let remaining: Int
    let progress: Double
    let onTap: () -> Void



    var body: some View {
        ZStack {
            // Track ring
            Circle()
                .stroke(Color.lightGray, style: StrokeStyle(lineWidth: 18))

            // Progress ring (270° sweep, starts from bottom-left like image)
            Circle()
                .trim(from: 0, to: progress * 0.80)
                .stroke(Color.jungleGreen, style: StrokeStyle(lineWidth: 18, lineCap: .round))
                .rotationEffect(.degrees(90))
                .animation(.easeInOut(duration: 0.3), value: progress)

            // Inner circle
            Circle()
                .fill(Color.lightGray)
                .padding(22)

            VStack(spacing: 4) {

                SemiBoldText(style: .init(text: "\(count)", textColor: .jungleGreen, textSize: 39))
                MeduimText(style: .init(text: "\(remaining) Remaining", size: 13, color: .black))
            }
        }
        .onTapGesture { onTap() }
        .contentShape(Circle())
    }
}



struct DhikrPillButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void

    private let selectedColor = Color(red: 0.20, green: 0.55, blue: 0.38)

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 15, weight: .medium))
                .foregroundColor(isSelected ? .white : .black)
                .padding(.horizontal, 20)
                .padding(.vertical, 12)
                .background(
                    RoundedRectangle(cornerRadius: 30)
                        .fill(isSelected ? selectedColor : Color(red: 0.93, green: 0.93, blue: 0.93))
                )
        }
        .buttonStyle(PlainButtonStyle())
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
    .padding(20)
    .background(Color(.systemGroupedBackground))
}
