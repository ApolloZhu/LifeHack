//
//  Extension.swift
//  LiveCamera
//
//  Created by Apollonian on 9/19/16.
//  Copyright © 2015-2016 WWITDC. All rights reserved.
//

import UIKit
import AVFoundation

extension AVCaptureDevice{
    func configure(using configuration: () -> ()){
        do{
            try lockForConfiguration()
            configuration()
            unlockForConfiguration()
        } catch {return}
    }
}

extension AVCaptureVideoOrientation{
    init(_ interfaceOrientation: UIInterfaceOrientation){
        self = AVCaptureVideoOrientation(rawValue: max(interfaceOrientation.rawValue,1))!
    }
}
