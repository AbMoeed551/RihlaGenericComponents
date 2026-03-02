import SwiftUI

struct ToastNotficationView: View {
    
    @State private var isVisible: Bool = false
    @State private var isCollapsed: Bool = false
    var onDismiss: (() -> Void)? = nil  
       
    
    var body: some View {
        VStack{
        HStack(spacing: 0) {
            HStack(spacing: 8) {
                TickButton()
                
                if !isCollapsed {
                    VStack(alignment: .leading, spacing: 2) {
                        SemiBoldText(style: SemiBoldTextStyle(text: "Completed", textColor: .black, textSize: 12))
                        RegularText(style: RegularTextStyle(text: "Great work! Keep it up", textColor: .captionGray, textSize: 12))
                    }
                    Spacer()
                    Deeds(style: DeedsStyle(deedsLabel: "Earn 4 deeds"))
                }
            }
            .padding()
        }
        .frame(width: isCollapsed ? 58 : 362, height: 58)
        .background(Color.customiseWhite)
        .cornerRadius(29)
        .overlay(RoundedRectangle(cornerRadius: 29).stroke(Color.freshGreenStroke, lineWidth: 1))
        .offset(y: isVisible ? 0 : 80)
        .opacity(isVisible ? 1 : 0)
        .task {
          
            withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                isVisible = true
            }
            
            // Step 2: 2 sec baad collapse
            try? await Task.sleep(for: .seconds(2))
            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                isCollapsed = true
            }
            try? await Task.sleep(for: .seconds(1)) // ✅ 2. Collapse hone do
                            onDismiss?() // ✅ 3. Phir parent k
        }
            Spacer()
    }
    }
}

#Preview {
    ZStack {
        Color.gray
            .edgesIgnoringSafeArea(.all)
        ToastNotficationView()
    }
}
