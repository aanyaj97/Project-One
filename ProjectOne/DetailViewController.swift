//
//  DetailViewController.swift
//  ProjectOne
//
//  Created by Aanya Jhaveri on 8/2/18.
//  Copyright © 2018 Aanya Jhaveri. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var selectedImage: String?
    
   
    override func viewDidLoad() {
        title = selectedImage
        
        super.viewDidLoad()
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
        navigationItem.largeTitleDisplayMode = .never
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear (_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.hidesBarsOnTap = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersHomeIndicatorAutoHidden() -> Bool {
        return navigationController!.hidesBarsOnTap
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
