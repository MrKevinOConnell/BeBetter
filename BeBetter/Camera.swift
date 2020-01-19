//
//  Camera.swift
//  BeBetter
//
//  Created by Kevin O'Connell on 1/19/20.
//  Copyright © 2020 Kevin O'Connell. All rights reserved.
//

import UIKit
import AVKit

class Camera: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let capture = AVCaptureSession();
        
       guard let phoneCam = AVCaptureDevice.default(for: .video) else {return}
        
        guard let input = try? AVCaptureDeviceInput(device: phoneCam) else {
            return}
        capture.addInput(input);
        // Do any additional setup after loading the view.
        
        capture.startRunning();
        
        let previewLayer = AVCaptureVideoPreviewLayer(session: capture);
        view.layer.addSublayer(previewLayer);
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
