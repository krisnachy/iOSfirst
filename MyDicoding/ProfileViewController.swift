//
//  ViewController.swift
//  MyDicoding
//
//  Created by Cahyo on 05/06/23.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var followedButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupCircleImageView()
        setText()
    }
    
    private func setupCircleImageView() {
        profileImageView.layer.borderWidth = 1
        profileImageView.layer.masksToBounds = false
        profileImageView.layer.borderColor = UIColor.black.cgColor
        profileImageView.layer.cornerRadius = profileImageView.frame.height/2
        profileImageView.clipsToBounds = true
    }
    
    private func setText() {
        nameLabel.text = "Kristanto Adi Prabowo"
        jobLabel.text = "CEO of Nggatheli"
    }
    
    private var isFollow = false
    
    @IBAction func setFollowed(_ sender: Any) {
        isFollow = !isFollow
        followedButton.setTitle(isFollow ? "Following" : "Follow", for: .normal)
        jobLabel.text = isFollow ? "CEO of Nggatheli Family" : "CEO of Nggatheli"
    }
}

