//
//  IntroductionView.swift
//  DelicieuxCafe
//
//  Created by Meet Brahmbhatt on 16/04/23.
//

import SwiftUI

struct IntroductionView: View {
    
    @State private var pageIndex = 0
    private let pages: [Page] = Page.samplePages
    private let dotAppearance = UIPageControl.appearance()
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        TabView(selection: $pageIndex) {
            ForEach(pages) { page in
                VStack {
                    Spacer()
                    PageView(currentPage: page)
                    Spacer()
                    if page == pages.last {
                        Button(action: {
                            appState.switchView = .login
                        }, label: {
                            Text("Sign up")
                                .fontWeight(.bold)
                                .foregroundColor(Color(K.COLORS.primaryFontColor))
                        })
                    } else {
                        Button(action: {
                            incrementPage()
                        }, label: {
                            Text("Next")
                                .fontWeight(.bold)
                                .foregroundColor(Color(K.COLORS.primaryFontColor))
                        })
                    }
                    Spacer()
                }
                .tag(page.tag)
            }
        }.animation(.easeInOut, value: pageIndex)
        .background(Color(K.COLORS.primaryColor))
        .ignoresSafeArea()
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .interactive))
        .onAppear {
            dotAppearance.currentPageIndicatorTintColor = .white
            dotAppearance.pageIndicatorTintColor = .gray
    }
    }
    
    func goToZero() {
        pageIndex = 0
    }
    
    func incrementPage() {
        pageIndex += 1
    }
}
