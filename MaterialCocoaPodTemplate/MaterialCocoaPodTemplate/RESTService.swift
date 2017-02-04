//
//  RESTService.swift
//  MaterialCocoaPodTemplate
//
//  Created by paul sohal on 2/3/17.
//  Copyright © 2017 Acceler Inc. All rights reserved.
//

import Alamofire
import SwiftyJSON

class RESTService {
    
    //GET Example
    func GetCountryCodes(success: @escaping (_ countries: [Country]) -> Void)  {
        
        var result:[Country] = []
        
        
        Alamofire.request("http://services.groupkt.com/country/get/all").responseJSON { response in

            print(response)
            let swiftyJsonVar = JSON(response.result.value!)

            print(swiftyJsonVar["RestResponse"]["result"])
            
              //Loop through Json
                for (_, subJson) in  swiftyJsonVar["RestResponse"]["result"] {
                    
                    let name = subJson["name"].string
                    let code2 = subJson["alpha2_code"].string
                    let code3 = subJson["alpha3_code"].string
                    
                    let county:Country = Country(name: name,code2: code2, code3: code3)
                    
                    result.append(county)
                }
            
            success(result)
      
        }
        
        
    }
    
    
    //POST Example
    
}

