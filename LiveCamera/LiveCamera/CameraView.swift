//
//  CameraView.swift
//  LiveCamera
//
//  Created by Apollonian on 9/19/16.
//  Copyright © 2015-2016 WWITDC. All rights reserved.
//

import UIKit
import AVFoundation

class CameraView: UIView {

    var previewLayer: AVCaptureVideoPreviewLayer {
        return layer as! AVCaptureVideoPreviewLayer
    }

    var session: AVCaptureSession? {
        get { return previewLayer.session }
        set {
            previewLayer.session = newValue
            previewLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        }
    }

    func rotate(to orientation: AVCaptureVideoOrientation){
        if previewLayer.connection.isVideoOrientationSupported{
            previewLayer.connection.videoOrientation = orientation
        }
    }

    override open class var layerClass: Swift.AnyClass {
        return AVCaptureVideoPreviewLayer.self
    }
    
}
