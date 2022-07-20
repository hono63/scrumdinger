//
//  CameraView.swift
//  Scrumdinger
//

import SwiftUI
import AVFoundation

struct CameraContentView: View {
    var body: some View {
        CameraView()
            .edgesIgnoringSafeArea(.all)
    }
}

struct CameraView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView { BaseCameraView() }
    func updateUIView(_ uiView: UIViewType, context: Context) {}
}

class BaseCameraView: UIView {
    override func layoutSubviews() {
        super.layoutSubviews()
        _ = initCaptureSession
        (layer.sublayers?.first as? AVCaptureVideoPreviewLayer)?.frame = frame
    }
    lazy var initCaptureSession: Void = {
        guard let device = AVCaptureDevice.DiscoverySession(deviceTypes: [.builtInWideAngleCamera],
                                                            mediaType: .video,
                                                            position: .unspecified)
            .devices.first(where: {$0.position == .front}),
              let input = try? AVCaptureDeviceInput(device: device) else { return }
        
        let session = AVCaptureSession()
        session.addInput(input)
        session.startRunning()
        
        layer.insertSublayer(AVCaptureVideoPreviewLayer(session: session), at:0)
    }()
}

struct CameraContentView_Previews: PreviewProvider {
    static var previews: some View {
        CameraContentView()
    }
}
