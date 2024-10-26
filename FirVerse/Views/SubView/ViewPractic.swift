import SwiftUI


struct ViewPractic: View {
    let training: training  // Принимаем объект training
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            
            // Изображение с закруглением верхних углов
            training.photo
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, minHeight: 169, maxHeight: 169)
                .clipped()
                .cornerRadius(16, corners: [.topLeft, .topRight])
            
            HStack {
                Text(training.title)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.system(size: 20))
                    .padding(.leading, 15)
                
                Spacer()
                
                TimeSubPractic(time: Int(training.time))
                CalSubPractic(cal: training.calories)
            }
            .frame(maxWidth: .infinity, minHeight: 40, alignment: .leading)
            .padding(.bottom, 10)
            .background(Color(red: 0.18, green: 0.18, blue: 0.18))
            .cornerRadius(16, corners: [.bottomLeft, .bottomRight])
            .offset(y: -15)
        }.navigationBarHidden(true)
    }
}

#Preview {
    ViewPractic(training: training(photo: Image("practic"), title: "День Ног", time: 60, calories: 170, money: 15))
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
