//
//  YTView.swift
//  RedBullApp
//
//  Created by Serenay Güneş on 21.05.2024.
//

import SwiftUI
import WebKit

struct YTView: View {
    let ID: String
    var body: some View {
        
        Video(videoID:ID)
            .frame(width: 350, height: 190)
            .cornerRadius(12)
            .padding(.horizontal, 24)
    }
}

#Preview {
    YTView(ID: "")
}

struct Video: UIViewRepresentable{
    let videoID: String
    
    func makeUIView(context: Context) -> some WKWebView {
        
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        guard let YouTubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)") else {return}
        
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url:YouTubeURL))
    }
    
}
