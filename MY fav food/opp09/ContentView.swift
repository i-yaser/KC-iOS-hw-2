//
//  ContentView.swift
//  opp09
//
//  Created by Yasr Alajmi on 12/08/2022.
//

import SwiftUI
struct ContentView: View {
    @State var money1 = 0.0
    @State var item1 : Int = 0
    @State var item2 : Int = 0
    @State var item3 : Int = 0
    @State var item4 : Int = 0
    @State var item5 : Int = 0
    @State var OP = ""
    @State var cash = ""
    var body: some View {
       
        VStack{
            Spacer()
             Text("Bigz z Ribz")
                .font(.title3)
                .fontWeight(.bold)
                    .frame(width: 150, height: 50)
                    .foregroundColor(.orange)
            
            Image("hhhh")
                .resizable()
                .frame(width: 160, height: 160)
             Text("قائمة المطعم")
                .foregroundColor(.white)
            VStack{
            HStack{
             
                Stepper("\(item1)", value: $item1)
            
                Spacer()
                    .frame(width: 20, height: 1)
                
                  Text("Maple Chicken \n 2.950 K.D")
                    .frame(width: 130, height: 80)
                
                Image("Maple Chicken")
                    .resizable()
                    .frame(width: 90, height: 80)
                    
            
            }  //HStack نهايه
            .padding()
            .frame(width: 440, height:70)
            .background(.orange) .opacity(0.9) //0000
            HStack{
             
                Stepper("\(item2)", value: $item2)
            
                Spacer()
                    .frame(width: 20, height: 1)
                        
                Text("Bigz Messy Brisket Burger \n 3.700 K.D")
                    .frame(width: 130, height: 80)
                
                Image("Bigz Messy Brisket Burger")
                    .resizable()
                    .frame(width: 90, height: 80)
                    
            
            }//HStack نهايه
            .padding()
            .frame(width: 440, height: 70)
            .background(.orange) .opacity(0.9) //0000
            HStack{
             
                Stepper("\(item3)", value: $item3)
            
                Spacer()
                    .frame(width: 20, height: 1)
                        
                Text("Bigz Chicken Wings \n 4.000 K.D")
                    .frame(width: 130, height: 80)
                
                Image("Bigz Chicken Wings")
                    .resizable()
                    .frame(width: 90, height: 80)
                    
            
            }//HStack نهايه
            .padding()
            .frame(width: 440, height: 70)
            .background(.orange) .opacity(0.9) //0000
            HStack{
             
                Stepper("\(item4)", value: $item4)
            
                Spacer()
                    .frame(width: 20, height: 1)
                        
                Text("Dynamite Shrimp \n 3.750 K.D")
                    .frame(width: 130, height: 80)
                
                Image("Dynamite Shrimp")
                    .resizable()
                    .frame(width: 90, height: 80)
                    
            
            }//HStack نهايه
            .padding()
            .frame(width: 440, height: 70)
            .background(.orange) .opacity(0.9) //0000
                HStack{
                 
                    Stepper("\(item5)", value: $item5)
                
                    Spacer()
                        .frame(width: 20, height: 1)
                            
                    Text("Cheesy Sweet Potato \n 2.500 K.D")
                        .frame(width: 130, height: 80)
                    
                    Image("Cheesy Sweet Potato")
                        .resizable()
                        .frame(width: 90, height: 80)
                        
                
                }//HStack نهايه
                .padding()
                .frame(width: 440, height: 70)
                .background(.orange) .opacity(0.9) //0000
            } //VStack نهاية
            .background()
            
            HStack{
            TextField("المبلغ", text: $OP)
                    .padding()
                    .frame(width: 100, height: 40)
                    .background(.white)
                    .clipShape(Capsule())
                
                Text("ضع المبلغ الذي لديك هنا")
                    .font(.body)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .frame(width: 250, height: 70)
            } //HStack نهاية الصغير
            .padding()
            .frame(width: 430, height: 70)
            
            
            Button {
                let meal1 = (Double(item1) )*2.950
                let meal2 = (Double(item2) )*3.700
                let meal3 = Double(item3) * 4.000
                let meal4 = Double(item4) * 3.750
                let meal5 = Double(item5) * 2.500
                money1 = meal1 + meal2 + meal3 + meal4 + meal5
                
                
                
                if Double(OP) ?? 0 >= money1 {
                    cash = "تمت العمليه بنجاح"
                }
                else if Double(OP) ?? 0 <= money1{
                    cash = "المبلغ اقل من قيمة الطلب"
                }
                else  {
                    cash = "يجب ادخال المبلغ أولاً"
                }
                
            } label: {
              
                Text("اضغط هنا لمعرفة السعر")
                    .padding()
                    .background(.orange) .opacity(0.9)
                    .clipShape(Capsule())
                
                
            }
            Text("\(money1)")
                .foregroundColor(.white)
                .padding()

            
            Text("\(cash)")
                .font(.body)
                .fontWeight(.heavy)
                .foregroundColor(.blue)
            
            Spacer()
    } //VStack نهايه
        .background(.black) .opacity(0.9)
        .frame(width: 440, height: 910)
        
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro Max")
    }
}


