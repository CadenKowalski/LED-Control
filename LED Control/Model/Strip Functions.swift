//
//  Strip Functions.swift
//  LED Control
//
//  Created by Caden Kowalski on 8/21/22.
//

import SwiftUI

class StripFunctions {
    
    @Published var isOn: Bool = false
    
    func togglePower(isOn: Bool) {
        
        self.isOn.toggle()
        let json: [String: Bool] = ["isOn": isOn]
        let jsonData = try? JSONSerialization.data(withJSONObject: json)
        let url = URL(string: "http://172.26.46.118:5000/lights")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = jsonData
            
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                        
            guard let data = data, error == nil else {
                print(error?.localizedDescription ?? "No error data")
                return
            }
            
            let responseJSON = try? JSONSerialization.jsonObject(with: data, options: [])
            if let responseJSON = responseJSON as? [String: Any] {
                print(responseJSON)
            }
        }
        
        task.resume()
    }
}
