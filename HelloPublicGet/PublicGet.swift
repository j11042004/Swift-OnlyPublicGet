//
//  PublicGet.swift
//  HelloPublicGet
//
//  Created by Uran on 2018/7/5.
//  Copyright © 2018年 Uran. All rights reserved.
//

import UIKit

class PublicGet: NSObject {
    public private(set) var area : Double!

    func setCircleArea(With halfDiameter : Double){
        print(pow(halfDiameter, 2))
        let circleArea = pow(halfDiameter, 2) * Double.pi
        self.area = circleArea
    }
}
