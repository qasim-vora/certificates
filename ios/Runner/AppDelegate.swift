import Flutter
import UIKit
import AVFoundation

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
      
           
    let controller = window?.rootViewController as! FlutterViewController
    let channel = FlutterMethodChannel(name: "video_thumbnail", binaryMessenger: controller.binaryMessenger)
    
    channel.setMethodCallHandler { [weak self] (call, result) in
        if call.method == "getThumbnail" {
            guard let args = call.arguments as? [String: Any],
                  let videoPath = args["videoPath"] as? String else {
                result(FlutterError(code: "INVALID_ARGUMENT", message: "Invalid arguments", details: nil))
                return
            }
            
            self?.generateThumbnail(from: videoPath, completion: { thumbnailPath in
                if let path = thumbnailPath {
                    result(path)
                } else {
                    result(FlutterError(code: "THUMBNAIL_ERROR", message: "Could not generate thumbnail", details: nil))
                }
            })
        } else {
            result(FlutterMethodNotImplemented)
        }
    }
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
  
  private func generateThumbnail(from videoPath: String, completion: @escaping (String?) -> Void) {
    DispatchQueue.global().async {
        let videoUrl = URL(fileURLWithPath: videoPath)
        let asset = AVAsset(url: videoUrl)
        let imageGenerator = AVAssetImageGenerator(asset: asset)
        imageGenerator.appliesPreferredTrackTransform = true
        
        let time = CMTime(seconds: 1.0, preferredTimescale: 600)
        
        do {
            let cgImage = try imageGenerator.copyCGImage(at: time, actualTime: nil)
            let uiImage = UIImage(cgImage: cgImage)
            
            if let data = uiImage.jpegData(compressionQuality: 0.8) {
                let tempDir = NSTemporaryDirectory()
                let thumbnailPath = "\(tempDir)/thumbnail.jpg"
                let url = URL(fileURLWithPath: thumbnailPath)
                try data.write(to: url)
                DispatchQueue.main.async {
                    completion(thumbnailPath)
                }
            } else {
                DispatchQueue.main.async {
                    completion(nil)
                }
            }
        } catch {
            print("Error generating thumbnail: \(error.localizedDescription)")
            DispatchQueue.main.async {
                completion(nil)
            }
        }
    }
  }
    

}
