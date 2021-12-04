//
//  OnBoardingPage.swift
//  EcommerceAppKit (iOS)
//
//  Created by Andrei Kamarou on 27.11.21.
//

import SwiftUI

let customFont = "Raleway-Regular"

struct OnBoardingPage: View {
    
    //MARK: - PROPERTIES
    @State var showLoginView: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Find your\nGadget")
                .font(.custom(customFont, size: 55))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Image("OnBoard")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Button {
                withAnimation {
                    showLoginView = true
                }
            } label: {
                Text("Get Started")
                    .font(.custom(customFont, size: 18))
                    .fontWeight(.semibold)
                    .padding(.vertical, 18)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
                    .foregroundColor(Color("Purple"))
            }
            .padding(.horizontal, 30)
            .offset(y: getRect().height < 750 ? 20 : 40)
            
        }
        .padding()
        .padding(.top, getRect().height < 750 ? 0 : 20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Color("Purple")
        )
        .overlay(
            Group {
                if showLoginView {
                    LoginView()
                        .transition(.move(edge: .bottom))
                } else {
                    
                }
            }
        )
    }
}

//MARK: - PREVIEW
struct OnBoardingPage_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingPage()
            .previewDevice("iPhone 13 Pro")
        
//        OnBoardingPage()
//            .previewDevice("iPhone 8")
    }
}

extension View{
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}
