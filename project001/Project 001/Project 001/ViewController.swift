//
//  ViewController.swift
//  Project 001
//
//  Created by Ogheneovo Abu on 2/4/22.
//

import UIKit


// NSInternalInconsistencyException - when storyboard identifier does not match what is defined in the code
// UITableViewController is a child of ViewController
class ViewController: UITableViewController {
    var pictures = [String]()

    // called when screen has loaded and is ready to be customized
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logLCEvent(for: "MainViewController", event: "viewDidLoad")
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath ?? ""
        
        // catching NSInvalidArgumentException fails randomly ???
        // guard against it also fails ???
//        guard let items = try? fm.contentsOfDirectory(atPath: path) else {
//            print("Error: unable to open path")
//            return
//        }
        // have to guard path variable so that it is not empty before using it !!!
        guard !path.isEmpty,
              let items = try? fm.contentsOfDirectory(atPath: path) else {
            print("Error: unable to open path")
            return
        }
        
        // items = array of strings containing file names
        for item in items {
            if item.hasPrefix("img") {
//                print("[Image Found]: \(item)")
                pictures.append(item)
            }
//            else {
//                print("[Not an Image]: \(item)")
//            }
        }
        
        navigationController?.navigationBar.prefersLargeTitles = true
        // every viewController has a title property
        title = "Storm Viewer"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    // Dequeuing cells
    // indexPath contains both a section number and a row number
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // every viewController has an optional property storyboard: the storyboard from which it was loaded or nil?
        // Detail was define in Storyboard ID in the identity inspector
        guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController  else {
            return
        }
        detailVC.selectedImage = pictures[indexPath.row]
        // every viewController has an optional property navigationController
        // the navController destroys removed views and frees up memory
        // the swipe gestures comes out-of-the box with navigationController
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
    
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        logLCEvent(for: "MainViewController", event: "viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        logLCEvent(for: "MainViewController", event: "viewDidLayoutSubviews")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        logLCEvent(for: "MainViewController", event: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        logLCEvent(for: "MainViewController", event: "viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        logLCEvent(for: "MainViewController", event: "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        logLCEvent(for: "MainViewController", event: "viewDidDisappear")
    }

}

// app directories are called bundles and they have the file extension .app
//  viewController = one screen of information
// Use the identity inspector field Name to define the class for the interface
// Use the attributes inspector to define the initial view and the Identifier field to define a table view cell's reuse identifier
// the Navigation Controller is responsible for the right-to-left sliding animation
