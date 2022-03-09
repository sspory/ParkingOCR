//
//  ScanViewController.swift
//  ParkingOCR
//
//  Created by Dongyoung Kim on 11/25/21.
//  카메라 스캔을 하기 위한 뷰컨트롤러

//
import UIKit
import AVFoundation



class ScanViewController: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate{
    private let videoOutput = AVCaptureVideoDataOutput()
    private let captureSession = AVCaptureSession()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("카메라뷰")
        // Do any additional setup after loading the view.
//        self.addVideoOutput()
//        self.addCameraInput()
//        self.addPreviewLayer()
//        self.captureSession.startRunning()
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.previewLayer.frame = self.view.bounds
    }
    
    
    private func addCameraInput() {
        let device = AVCaptureDevice.default(for: .video)!
        let cameraInput = try! AVCaptureDeviceInput(device: device)
        self.captureSession.addInput(cameraInput)
    }

    private lazy var previewLayer: AVCaptureVideoPreviewLayer = {
        let preview = AVCaptureVideoPreviewLayer(session: self.captureSession)
        preview.videoGravity = .resizeAspect
        return preview
    }()
    
    private func addPreviewLayer() {
        self.view.layer.addSublayer(self.previewLayer)
    }
    
    

    private func addVideoOutput() {
        self.videoOutput.videoSettings = [(kCVPixelBufferPixelFormatTypeKey as NSString) : NSNumber(value: kCVPixelFormatType_32BGRA)] as [String : Any]
        self.videoOutput.setSampleBufferDelegate(self, queue: DispatchQueue(label: "my.image.handling.queue"))
        self.captureSession.addOutput(self.videoOutput)
    }
    
    func captureOutput(_ output: AVCaptureOutput,
                       didOutput sampleBuffer: CMSampleBuffer,
                       from connection: AVCaptureConnection) {
        guard let frame = CMSampleBufferGetImageBuffer(sampleBuffer) else {
            debugPrint("unable to get image from sample buffer")
            return
        }
        print("did receive image frame")
        // process image here
    }

}

