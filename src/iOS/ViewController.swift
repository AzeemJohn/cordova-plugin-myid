import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var authTypeSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func login(_ sender: Any) {
        var urlComps = URLComponents(string: "https://myid.uz/api/v1/oauth2/authorization")!
        let queryItems = [
            URLQueryItem(name: "client_id", value: "ofb_mobile_sdk-I6j6zGazwM5ile6VjV0v5b4JYY2NtLPvmRBAkD12"),
            URLQueryItem(name: "redirect_uri", value: "uzinfocom://bank"),
            URLQueryItem(name: "response_type", value: "code"),
            URLQueryItem(name: "method", value: authTypeSwitch.isOn ? "strong" : "simple"),
            URLQueryItem(name: "scope", value: "common_data,doc_data,contacts,address"),
        ]
        
        urlComps.queryItems = queryItems
        
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(urlComps.url!)
        } else {
            // Fallback on earlier versions
        }
    }
}
