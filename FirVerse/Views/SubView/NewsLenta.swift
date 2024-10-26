import SwiftUI


struct NewsLenta: View {
    let News:news
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            
            // Изображение с закруглением верхних углов
            News.photo
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, minHeight: 169, maxHeight: 169)
                .clipped()
                .cornerRadius(16, corners: [.topLeft, .topRight])
            
            HStack {
                Text(News.title)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.system(size: 20))
                    .padding(.leading, 15)
                
                Spacer()
                
                TimeSubPractic(time: Int(News.time))
                Image("StarMoney")
                    .padding(.horizontal,10)
            }
            .frame(maxWidth: .infinity, minHeight: 40, alignment: .leading)
            .padding(.bottom, 10)
            .background(Color(red: 0.18, green: 0.18, blue: 0.18))
            .cornerRadius(16, corners: [.bottomLeft, .bottomRight])
            .offset(y: -15)
        }
    }
}

#Preview {
    NewsLenta(News: news(photo: Image("practic"), title: "О спорте", time: 6, money: 3))
}


