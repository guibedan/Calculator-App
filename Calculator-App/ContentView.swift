//
//  ContentView.swift
//  Calculator-App
//
//  Created by Guilherme Bedan on 04/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var vet: [Float] = []
    @State var operationVet: [String] = []
    @State var numsS: String = ""
    @State var res: String = ""
    @State var notFinish: String = ""
    
    @State var ref: Int = 0
    
    func calculator() {

        var test: Float = vet[0]
        
        if notFinish == "" {
            for i:Int in 1...ref {
                
                switch (operationVet[i-1]) {
                
                case "/":
                    test/=vet[i]
                    res = "\(test)"
                    break;
                case "*":
                    test*=vet[i]
                    res = "\(test)"
                    break;
                case "-":
                    test-=vet[i]
                    res = "\(test)"
                    break;
                case "+":
                    test+=vet[i]
                    res = "\(test)"
                    break;
                
                default:
                    print("error")
                    break;
            }
        }
                
                
        } else {
            var contnuei:Float = Float(notFinish) ?? 0
            for i:Int in 1...ref {
                
                switch (operationVet[i-1]) {
                
                case "/":
                    contnuei/=vet[i]
                    res = "\(contnuei)"
                    break;
                case "*":
                    contnuei*=vet[i]
                    res = "\(contnuei)"
                    break;
                case "-":
                    contnuei-=vet[i]
                    res = "\(contnuei)"
                    break;
                case "+":
                    contnuei+=vet[i]
                    res = "\(contnuei)"
                    break;
                
                default:
                    print("error")
                    break;
            }
        }
    }
        ref = 0
        operationVet.removeAll()
        vet.removeAll()
        notFinish = res
        numsS = ""
    }
    
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text("\(res)")
                        .font(.title)
                        .padding(0)
                        .foregroundColor(Color.white)
                }.frame(width: 300, height: 30, alignment: .trailing).padding(.top, 200).padding(.bottom,23)
                HStack {
                    VStack {
                        HStack {
                            Button(action: {
                                numsS += "7"
                                res = numsS
                            })
                            {Text("7")
                                    .foregroundColor(Color.white)
                                    .frame(width: 90, height: 90, alignment: .center)
                            }
                            Button(action: {
                                numsS += "8"
                                res = numsS
                            })
                            {Text("8")
                                    .foregroundColor(Color.white)
                                    .frame(width: 90, height: 90, alignment: .center)
                            }
                            Button(action: {
                                numsS += "9"
                                res = numsS
                            })
                            {Text("9")
                                    .foregroundColor(Color.white)
                                    .frame(width: 90, height: 90, alignment: .center)
                            }
                            
                        }
                        HStack {
                            Button(action: {
                                numsS += "4"
                                res = numsS
                            })
                            {Text("4")
                                    .foregroundColor(Color.white)
                                    .frame(width: 90, height: 90, alignment: .center)
                            }
                            Button(action: {
                                numsS += "5"
                                res = numsS
                            })
                            {Text("5")
                                    .foregroundColor(Color.white)
                                    .frame(width: 90, height: 90, alignment: .center)
                            }
                            Button(action: {
                                numsS += "6"
                                res = numsS
                            })
                            {Text("6")
                                    .foregroundColor(Color.white)
                                    .frame(width: 90, height: 90, alignment: .center)
                            }
                        }
                        HStack {
                            Button(action: {
                                numsS += "1"
                                res = numsS
                            })
                            {Text("1")
                                    .foregroundColor(Color.white)
                                    .frame(width: 90, height: 90, alignment: .center)
                            }
                            Button(action: {
                                numsS += "2"
                                res = numsS
                            })
                            {Text("2")
                                    .foregroundColor(Color.white)
                                    .frame(width: 90, height: 90, alignment: .center)
                            }
                            Button(action: {
                                numsS += "3"
                                res = numsS
                            })
                            {Text("3")
                                    .foregroundColor(Color.white)
                                    .frame(width: 90, height: 90, alignment: .center)
                            }
                        }
                        HStack {
                            Button(action: {
                                numsS += "."
                                res = numsS
                            })
                            {Text(",")
                                    .foregroundColor(Color.white)
                                    .frame(width: 90, height: 90, alignment: .center)
                            }
                            Button(action: {
                                numsS += "0"
                                res = numsS
                                
                            })
                            {Text("0")
                                    .foregroundColor(Color.white)
                                    .frame(width: 90, height: 90, alignment: .center)
                            }
                            Button(action: {
                                vet.append(Float(numsS) ?? 0)
                                calculator()
                            })
                            {Text("=")
                                    .foregroundColor(Color.white)
                                    .frame(width: 90, height: 90, alignment: .center)
                                    .padding(0)
                            }
                        }.padding(0)
                    }
                    
                    VStack {
                        Button(action: {
                            numsS = ""; notFinish = ""; res = ""
                            vet.removeAll()
                            operationVet.removeAll()
                            ref = 0
                        })
                        {Image(systemName: "delete.left")
                                .foregroundColor(Color.white)
                                .frame(width: 90, height: 70, alignment: .center)
                        }
                        Button(action: {
                            operationVet.append("/")
                            res = ""
                            ref+=1
                            vet.append(Float(numsS) ?? 0)
                            numsS = ""
                        })
                        {Image(systemName: "divide")
                                .foregroundColor(Color.white)
                                .frame(width: 90, height: 70, alignment: .center)
                        }
                        Button(action: {
                            operationVet.append("*")
                            res = ""
                            ref+=1
                            vet.append(Float(numsS) ?? 0)
                            numsS = ""
                        })
                        {Image(systemName: "multiply")
                                .foregroundColor(Color.white)
                                .frame(width: 90, height: 70, alignment: .center)
                        }
                        Button(action: {
                            operationVet.append("-")
                            res = ""
                            ref+=1
                            vet.append(Float(numsS) ?? 0)
                            numsS = ""
                        })
                        {Image(systemName: "minus")
                                .foregroundColor(Color.white)
                                .frame(width: 90, height: 70, alignment: .center)
                        }
                        Button(action: {
                            operationVet.append("+")
                            vet.append(Float(numsS) ?? 0)
                            res = ""
                            ref+=1
                            numsS = ""
                        })
                        {Image(systemName: "plus")
                                .foregroundColor(Color.white)
                                .frame(width: 90, height: 70, alignment: .center)
                        }
                    }.background(Color.orange).padding(0)
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
