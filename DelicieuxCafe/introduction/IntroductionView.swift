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
    @EnvironmentObject var pageActionReceiver: PageActionReceiver
    @EnvironmentObject var pageActionInvoker: PageActionInvoker
    
    var body: some View {
        ZStack {
            TabView(selection: $pageIndex) {
                ForEach(pages) { page in
                    VStack {
                        Spacer()
                        PageView(currentPage: page)
                        Spacer()
                    }
                    .tag(page.tag)
                }
            }.animation(.easeInOut, value: pageIndex)
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .interactive))
            .onAppear {
                dotAppearance.currentPageIndicatorTintColor = .white
                dotAppearance.pageIndicatorTintColor = .gray
            }
            VStack(alignment: .trailing) {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        if isLastIndex() {
                            appState.switchView = .login
                            UserDefaults.standard.set(true, forKey: K.KEYS.isLaunchedBefore)
                        } else {
                            incrementPage()
                        }
                    }, label: {
                        HStack {
                            Text(isLastIndex() ? K.LABELS.signUp : K.LABELS.next)
                                .fontWeight(.bold)
                                .foregroundColor(Color(K.COLORS.primaryFontColor))
                        }
                    }).frame(height: 30)
                    .padding(.bottom, 15)
                    .padding(.trailing, 20)
                }
            }
        }.background(Color(K.COLORS.primaryColor))
        .ignoresSafeArea()
    }
    
    func isLastIndex() -> Bool {
        return pageIndex == pages.count - 1
    }
    
    func incrementPage() {
        let command = MoveToNextPageCommand(pageActionReceiver: pageActionReceiver, index: pageIndex)
        pageActionInvoker.nextPage(using: command)
        pageIndex = command.nextPageIndex
    }
}
