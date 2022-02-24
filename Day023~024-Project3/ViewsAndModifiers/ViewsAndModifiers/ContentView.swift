//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Loyio Hex on 2/24/22.
//

import SwiftUI


struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .clipShape(Capsule())
    }
}

struct Watermark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding()
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
}


struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    @ViewBuilder let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack {
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func title() -> some View {
        modifier(TitleModifier())
    }
}

struct ContentView: View {
    @State private var useRedText = false
    
    var motto1 : some View {
        Text("Draco dormiens")
    }
    let motto2 = Text("nunwuam titillandus")
    
    @ViewBuilder var spells: some View {
            Text("Lumos")
            Text("Obliviate")
    }
    
    var body: some View {
        Text("Hello World")
            .title()
//        GridStack(rows: 4, columns: 4) { row, col in
//            HStack {
//                Image(systemName: "\(row * 4 + col).circle")
//                Text("R\(row) C\(col)")
//            }
//
//        }
        
//        Color.blue
//            .frame(width: 300, height: 200)
//            .watermarked(with: "Loyio Hex")
//        Text("Hello world!")
//            .modifier(Title())
//        VStack(spacing: 10) {
//            CapsuleText(text: "First")
//                .foregroundColor(.white)
//            CapsuleText(text: "Second")
//                .foregroundColor(.yellow)
//        }
//        spells
//        VStack {
//            motto1
//                .foregroundColor(.red)
//            motto2
//                .foregroundColor(.blue)
//        }
//        VStack {
//            Text("Gryaskfj")
//                .font(.largeTitle)
//                .blur(radius: 50)
//            Text("Husdfkjk")
//            Text("Ravensdjfk")
//            Text("Oihdkfskl")
//        }
//        .font(.title)
//        .blur(radius: 5)
//        Button("Hello, world!") {
//            useRedText.toggle()
//        }
//        .foregroundColor(useRedText ? .red : .blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
