//
//  ViewController.swift
//  HW10_CreatePeople
//
//  Created by 蔡尚諺 on 2021/11/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ivHead: UIImageView!
    @IBOutlet weak var ivBody: UIImageView!
    @IBOutlet weak var ivFace: UIImageView!
    
    @IBOutlet weak var faceView: UIView!
    @IBOutlet weak var headView: UIView!
    @IBOutlet weak var bodyView: UIView!

    @IBOutlet weak var btFace: UIButton!
    @IBOutlet weak var btBody: UIButton!
    @IBOutlet weak var btHead: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }

    @IBAction func selectFace(_ button: UIButton) {
        
        faceView.isHidden = false
        btFace.alpha = 1
        headView.isHidden = true
        btHead.alpha = 0.5
        bodyView.isHidden = true
        btBody.alpha = 0.5
        
    }
    
    @IBAction func selectHead(_ button: UIButton) {
        
        faceView.isHidden = true
        btFace.alpha = 0.5
        headView.isHidden = false
        btHead.alpha = 1
        bodyView.isHidden = true
        btBody.alpha = 0.5
        
    }
    
    @IBAction func selectBody(_ button: UIButton) {
        
        faceView.isHidden = true
        btFace.alpha = 0.5
        headView.isHidden = true
        btHead.alpha = 0.5
        bodyView.isHidden = false
        btBody.alpha = 1
        
    }
    
    @IBAction func clickFace(_ button: UIButton) {
        let imageName = "Face" + "\(button.tag)"
        ivFace.image = UIImage(named: imageName)
        
    }
    
    @IBAction func clickHead(_ button: UIButton) {
        
        let imageName = "Head" + "\(button.tag)"
        ivHead.image = UIImage(named: imageName)

    }
    
    @IBAction func clickBody(_ button: UIButton) {
        
        let imageName = "Body" + "\(button.tag)"
        ivBody.image = UIImage(named: imageName)
        
    }
    
    @IBAction func randomStyle(_ sender: UIButton) {
        
        let faceImageName = "Face" + "\(Int.random(in: 1...5))"
        ivFace.image = UIImage(named: faceImageName)
        
        let headImageName = "Head" + "\(Int.random(in: 1...5))"
        ivHead.image = UIImage(named: headImageName)

        let bodyImageName = "Body" + "\(Int.random(in: 1...5))"
        ivBody.image = UIImage(named: bodyImageName)

    }
    
    //初始UI畫面
    func initUI() {
        headView.isHidden = true
        btHead.alpha = 0.5
        bodyView.isHidden = true
        btBody.alpha = 0.5
    }
    
}


