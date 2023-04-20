//
//  ContentView.swift
//  DélicieuxCafé
//
//  Created by Meet Brahmbhatt on 14/04/23.
//

import SwiftUI

struct ContentView: View {
    @State private var pageIndex = 0
    private let pages: [Page] = Page.samplePages
    private let dotAppearance = UIPageControl.appearance()
    
    var body: some View {
        Text("ContentView")
//        StoryboardViewController()
//        NavigationView {
//            GeometryReader { reader in
//                    TabView(selection: $pageIndex) {
//                        ForEach(pages) { page in
//                            VStack {
//                                PageView(currentPage: page)
//                                if page == pages.last {
//                                    Button(action: {
//                                        goToZero()
//                                    }, label: {
//                                        Text("Sign up")
//                                            .fontWeight(.bold)
//                                            .foregroundColor(Color(K.COLORS.primaryFontColor))
//                                    })
//                                } else {
//                                    Button(action: {
//                                        incrementPage()
//                                    }, label: {
//                                        Text("Next")
//                                            .fontWeight(.bold)
//                                            .foregroundColor(Color(K.COLORS.primaryFontColor))
//                                    })
//                                }
//                            }
//                            .tag(page.tag)
//                        }
//                    }.animation(.easeInOut, value: pageIndex)
//                    .background(Color(K.COLORS.primaryColor))
//                    .ignoresSafeArea()
//                    .tabViewStyle(PageTabViewStyle())
//                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .interactive))
//                    .onAppear {
//                        dotAppearance.currentPageIndicatorTintColor = .white
//                        dotAppearance.pageIndicatorTintColor = .gray
//                }
//            }
//        }
//        .navigationBarHidden(true)
//        .navigationBarBackButtonHidden(true)
//        .ignoresSafeArea()
//        .background(Color(K.COLORS.primaryColor))
    }
    
    
}

struct StoryboardViewController: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(identifier: "Main")
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
