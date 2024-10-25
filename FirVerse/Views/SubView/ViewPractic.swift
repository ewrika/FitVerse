import SwiftUI

struct ViewPractic: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            
            // Image part with top corner rounding
            Image("practic") // Замени "image" на нужный ресурс
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, minHeight: 169, maxHeight: 169)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous).path(in: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 169)))
                .cornerRadius(16, corners: [.topLeft, .topRight])
            
            HStack {
                Text("День Ног")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.system(size: 20))
                    .padding(.leading, 15)
                Spacer()
                TimeSubPractic(time: 7)
                CalSubPractic(cal: 170)
            }
            .frame(maxWidth: .infinity, minHeight: 40, alignment: .leading)
            .padding(.bottom, 10)
            .background(Color(red: 0.18, green: 0.18, blue: 0.18))
            .cornerRadius(16, corners: [.bottomLeft, .bottomRight]) // Скругляем только нижние углы
            .offset(y:-15)
        }
        .padding()
    }
}

// Для того, чтобы использовать cornerRadius только для отдельных углов, можно расширить View так:

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

#Preview {
    ViewPractic()
}
