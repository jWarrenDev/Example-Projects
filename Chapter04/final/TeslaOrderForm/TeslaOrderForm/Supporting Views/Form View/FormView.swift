//
//  FormView.swift
//  ShoeStore
//
//  Created by Craig Clayton on 1/22/20.
//  Copyright © 2020 Cocoa Academy. All rights reserved.
//

import SwiftUI
import Combine

struct FormView: View {
    @EnvironmentObject var order: OrderViewModel
    
    init() {
    }

    var body: some View {
        VStack {
            Form {
                rentalPeriod
            }
        }
    }

    var rentalPeriod: some View {
        Section {
            Picker(selection: $order.prototypeAmt, label: Text("Rental period")) {
                ForEach(0..<order.prototypeArray.count, id: \.self) {
                    value in
                    Text("\(self.order.prototypeArray[value])").tag(value)
                }
            }
        }.listRowBackground(Color.baseGray)
    }
    
    var numberOfCars: some View {
        Section {
            Picker(selection: $order.prototypeAmt, label: Text("Number of cars")) {
                
            }
        }
    }

}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView().environmentObject(OrderViewModel())
    }
}





















