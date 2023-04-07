//
//  ContentView.swift
//  kdv
//
//  Created by Ali Osman Öztürk on 3.04.2023.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State var kdvdahil: String = ""
    @State var kdvdahilComma: String = ""
    @State var kdvharic: Double = 0.0
    @State var kdvharicStr: String = ""
    @State var kdvharicStrComma: String = ""
    
    var body: some View {
        
        VStack {
            HStack{
                Text("KDV Dahil Fiyatı Giriniz: ")
                    .font(.title3)
                    .padding([.top, .leading, .bottom])
                    
                TextField("KDV Dahil Fiyat", text: $kdvdahil)
                    .padding([.top, .bottom, .trailing])
            }
            Button(action: {
                kdvdahilComma = String(kdvdahil.description.replacingOccurrences(of: ",", with: "."))
                kdvharic = Double(kdvdahilComma)! / 1.18
                kdvharicStr = String(kdvharic)
                kdvharicStrComma = String(kdvharic.description.replacingOccurrences(of: ".", with: ","))
            })
            {
                Text("Hesapla")
                    .font(.title3)
                    .fontWeight(.bold)
                    .bold()
                    .padding(.all)
            }.keyboardShortcut(.defaultAction)
            TextField("KDV Hariç Fiyat", text: $kdvharicStrComma)
                .padding(.all)
            
            
            Grid(alignment: .center, horizontalSpacing: 20, verticalSpacing: 20) {
                        /*#-code-walkthrough(basicGrid)*/
                Text("PLASTİKTARAK")
                    .font(.title)
                        GridRow {
                            VStack{
                                Text("₺46,90")
                                    .font(.title)
                                Text("39,7457627119")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.red)
                                    .textSelection(.enabled)
                            }
                            VStack{
                                Text("₺44,90")
                                    .font(.title)
                                Text("8,3898305085")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.red)
                            }
                            VStack{
                                Text("₺35,90")
                                    .font(.title)
                                Text("39,7457627119")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.red)
                            }
                        }
                        
                    }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
