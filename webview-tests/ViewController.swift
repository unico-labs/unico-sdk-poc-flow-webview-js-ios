//
//  ViewController.swift
//  webview-tests
//
//  Created by Matheus Domingos on 29/07/22.
//

import UIKit
import WebKit
import SafariServices

final class ViewController: UIViewController {
    private let urlString = "https://192.168.2.137:3000/"

    private var safariViewController: SFSafariViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(forName: .didReceiveDeepLink, object: nil, queue: .main) { [weak self] notification in
            let url = notification.object as? URL

            guard let url = url else {
                return
            }
            let parameters = url
                .absoluteString
                .replacingOccurrences(of: "webview-tests://", with: "")
                .split(separator: "&")
                .map { parameter -> [String: String] in
                    let p = parameter.split(separator: "=")
                    return [String(p[0]): String(p[1])]
                }
                .reduce([String: String]()) { (accumulator, dictionary) in
                    var nextDict = accumulator

                    dictionary.forEach { element in
                        nextDict[element.key] = element.value
                    }

                    return nextDict
                }

            let method = parameters["method"]
            let encrypted = parameters["encrypted"]?.replacingOccurrences(of: "_", with: ":")

            switch method {
            case "success_callback":
                self?.safariViewController?.dismiss(animated: true) {}
            case "test":
                let alert = UIAlertController(
                    title: nil,
                    message: "Deeplink received!",
                    preferredStyle: .alert
                )
                alert.addAction(UIAlertAction(title: "OK", style: .destructive))
                self?.safariViewController?.present(alert, animated: true)
            default:
                break
            }
        }
    }

    @IBAction func presentWebView() {
        guard let url = URL(string: urlString) else {
            fatalError("invalid url")
        }

        let safariViewController = SFSafariViewController(url: url)
        present(safariViewController, animated: true)

        self.safariViewController = safariViewController
    }
}

extension Notification.Name {
    static let didReceiveDeepLink = Notification.Name("didReceiveDeepLink")
}
