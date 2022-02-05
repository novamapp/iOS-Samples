//
//  DetailViewController.swift
//  DetailViewController
//
//  Created by Ogheneovo Abu on 2/4/22.
//

import UIKit

// memory is allocated when controller is created
//      -> the layout is loaded from storyboard
//      -> then all of the @IBOutlets are connected from storyboard to code
// this ensures that memory is allocated for the UI variables even if they do not exist (are not connected) yet
class DetailViewController: UIViewController {
    // @IBOutlet tells Xcode that there's a connection between this line of code and the IB
    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logLCEvent(for: "DetailViewController", event: "viewDidLoad")
        
        imageView.image = UIImage(named: selectedImage ?? "")
        
        navigationItem.largeTitleDisplayMode = .never
        title = selectedImage
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        logLCEvent(for: "DetailViewController", event: "viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        logLCEvent(for: "DetailViewController", event: "viewDidLayoutSubviews")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        logLCEvent(for: "DetailViewController", event: "viewWillAppear")
        // hidesBarsOnTap property of navController may interfere with TableViewController tap
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        logLCEvent(for: "DetailViewController", event: "viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        logLCEvent(for: "DetailViewController", event: "viewWillDisappear")
        navigationController?.hidesBarsOnTap = false
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        logLCEvent(for: "DetailViewController", event: "viewDidDisappear")
    }
}

// AutoLayout: defines rules for how views should be laid out; automatically ensures those rules are followed
//      - constriants: AutoLayout rules

// Image Modes:
//      - AspectFit: all of image is visible
//      - Scale to Fill: image is distorted on both axis to fill all whitespace
//      - AspectFill: image proportional covers whitespace and may expand out-of-bounds

// LifeCycle Methods:
//      - viewDidLoad()
//      - viewWillAppear()
//      - viewDidAppear()
//      - viewWiilDisappear()
//      - viewDidDisappear()
