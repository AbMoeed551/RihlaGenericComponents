//
//  RihlaScreenContainer.swift
//  RihlaComponents
//
//  Created by Abdul Haseeb on 05/03/2026.
//
import SwiftUI

public enum BaseStyleTypes {
    case dashboard
    case counter
    case none
}
public struct RihlaScreenContainerStyle {
    public let isBackButtonEnable: Bool
    public let title: String
    public let alignment: HorizontalAlignment
    public let baseStyle: BaseStyleTypes
    
    public init(isBackButtonEnable: Bool = true, title: String = "", alignment: HorizontalAlignment = .leading, baseStyle: BaseStyleTypes) {
        self.isBackButtonEnable = isBackButtonEnable
        self.title = title
        self.alignment = alignment
        self.baseStyle = baseStyle
    }
}
public struct RihlaDashboardHeaderStyle {
    public let image: String
    public let userName: String
    
    public init(image: String, userName: String) {
        self.image = image
        self.userName = userName
    }
}
public struct RihlaCounterStyle {
    public let title: String
    public let subTitle: String
    
    public init(title: String, subTitle: String) {
        self.title = title
        self.subTitle = subTitle
    }
}

public struct RihlaScreenContainer<Content: View>: View {
    private let style: RihlaScreenContainerStyle
    private let headerStyle: RihlaDashboardHeaderStyle?
    private let counterStyle: RihlaCounterStyle?
    private let content: () -> Content
    
    @StateObject var themeManager = ThemeManager()
    
    var onBackButtonTapped: () -> Void = {}
    var onDashboardSettingsButtonTapped: () -> Void = {}
    var onDashboardBookMarkButtonTapped: () -> Void = {}
    var onCounterResetButtonTapped: () -> Void = {}
    
    public init(style: RihlaScreenContainerStyle, headerStyle: RihlaDashboardHeaderStyle? = nil, counterStyle: RihlaCounterStyle? = nil, @ViewBuilder content: @escaping () -> Content) {
        self.style = style
        self.headerStyle = headerStyle
        self.counterStyle = counterStyle
        self.content = content
    }
    
    public var body: some View {
        GeometryReader { geo in
            ZStack {
                themeManager.RihlaBackground.ignoresSafeArea()
                VStack(alignment: style.alignment, spacing: 0) {
                    switch style.baseStyle {
                    case .dashboard:
                        dashboardHeaderView
                    case .counter:
                        counterHeaderView
                    case .none:
                        backButtonAndTitleView
                    }
                    content()
                    Spacer()
                }
                .padding(.horizontal, 20)
            }
        }
    }
    
    private var backButtonAndTitleView: some View {
        HStack {
            if style.isBackButtonEnable {
                BackButtonView(style: .init(title: style.title, action: {
                    onBackButtonTapped()
                }))
            } else {
                MeduimText(style: .init(text: style.title, size: 20, color: Color.black))
            }
            Spacer()
        }
    }
    
    private var counterHeaderView: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                MeduimText(style: .init(text: counterStyle?.title ?? "", size: 20, color: Color.black))
                MeduimText(style: .init(text: counterStyle?.subTitle ?? "", size: 14, color: Color.gray))
            }
            Spacer()
            CircleIconView(style: .init(width: 44, height: 44, backGroundColor: Color.lightGray, image: "arrow.trianglehead.clockwise", imageColor: Color.black, imageWidth: 15, imageHeight: 15, action: {
                onCounterResetButtonTapped()
            }))
        }
    }
    
    private var dashboardHeaderView: some View {
        HStack {
            HStack(spacing: 10) {
                CircleIconView(style: .init(width: 44, height: 44, backGroundColor: Color.lightGray, image: headerStyle?.image ?? "", imageColor: Color.black, imageWidth: 20, imageHeight: 20, action: {}))
                VStack(alignment: .leading) {
                    RegularText(style: .init(text: "Assalam-o-Alaikum", textColor: Color.gray, textSize: 12))
                    SemiBoldText(style: .init(text: headerStyle?.userName ?? "", textColor: Color.black, textSize: 20))
                }
            }
            Spacer()
            HStack {
                CircleIconView(style: .init(width: 44, height: 44, backGroundColor: Color.lightGray, image: "gear", imageColor: Color.black, imageWidth: 16, imageHeight: 16, action: {
                    onDashboardSettingsButtonTapped()
                }))
                CircleIconView(style: .init(width: 44, height: 44, backGroundColor: Color.lightGray, image: "bookmark", imageColor: Color.black, imageWidth: 16, imageHeight: 15, action: {
                    onDashboardBookMarkButtonTapped()
                }))
            }
        }
    }
    
    public func onBackButtonTap(_ action: @escaping () -> Void) -> RihlaScreenContainer {
        var back = self
        back.onBackButtonTapped = action
        return back
    }
    public func onDashboardSettingsButtonTap(_ action: @escaping () -> Void) -> RihlaScreenContainer {
        var back = self
        back.onDashboardSettingsButtonTapped = action
        return back
    }
    public func onDashboardBookMarkButtonTap(_ action: @escaping () -> Void) -> RihlaScreenContainer {
        var back = self
        back.onDashboardBookMarkButtonTapped = action
        return back
    }
    public func onCounterResetButtonTap(_ action: @escaping () -> Void) -> RihlaScreenContainer {
        var back = self
        back.onCounterResetButtonTapped = action
        return back
    }
}

//MARK: - Preview for Dashboard
//#Preview {
//    RihlaScreenContainer(style: .init(baseStyle: .dashboard), headerStyle: .init(image: "person", userName: "Abdul Haseeb"), content: {
//    })
//}

//MARK: - Preview for Counter
//#Preview {
//    RihlaScreenContainer(style: .init(baseStyle: .counter), counterStyle: .init(title: "Alhamdulillah", subTitle: "ٱلْحَمْدُ لِلَّٰهِ"), content: {
//    })
//}

//MARK: - Preview for Counter
#Preview {
    RihlaScreenContainer(style: .init(title: "hidf", baseStyle: .none), content: {})
}



