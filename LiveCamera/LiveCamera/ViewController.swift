//
//  ViewController.swift
//  LiveCamera
//
//  Created by Apollonian on 9/19/16.
//  Copyright © 2015-2016 WWITDC. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override var prefersStatusBarHidden: Bool{ return true }

    var cameraView: CameraView{ return self.view as! CameraView }
    lazy var session = AVCaptureSession()
    let source = try! AVCaptureDeviceInput(device: .defaultDevice(withMediaType: AVMediaTypeVideo))
    var device: AVCaptureDevice!{ return source.device }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIApplication.shared.isIdleTimerDisabled = true
        session.addInput(source)
        cameraView.session = session
        session.startRunning()
        cameraView.addGestureRecognizer(UIPinchGestureRecognizer(target: self, action: #selector(zoom(recognizer:))))
        NotificationCenter.default.addObserver(self, selector: #selector(rotate), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
    }

    func rotate() {
        let interfaceOrientation = UIApplication.shared.statusBarOrientation
        cameraView.rotate(to: .init(interfaceOrientation))
    }

    func zoom(recognizer: UIPinchGestureRecognizer){
        switch recognizer.state {
        case .began, .changed:
            device.configure {
                var scale = recognizer.scale
                let maxZoom = device.activeFormat.videoMaxZoomFactor
                scale = device.videoZoomFactor + pow(maxZoom, abs(scale-1)) * (scale > 1 ? 1.3 : -1 )
                device.ramp(toVideoZoomFactor: min(max(1,scale),maxZoom), withRate: Float(recognizer.velocity))
                recognizer.scale = 1
            }
        default:
            recognizer.scale = 1
            device.configure {
                if device.isRampingVideoZoom{
                    device.cancelVideoZoomRamp()
                }
            }
        }
    }
    
}
