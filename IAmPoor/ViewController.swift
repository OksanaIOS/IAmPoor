//
//  ViewController.swift
//  IAmPoor
//
//  Created by Vladimir on 09/09/24.
//

import UIKit

class ViewController: UIViewController {

    
    let myLabel = UILabel()
    let myImage = UIImageView()
    
    private func createImageView() {
        //    настраиваем изображение и добавляем его на экран
        
        let imageFrame = CGRect(x: 66, y: 313, width: 270, height: 270)
        myImage.frame = imageFrame
        self.myImage.image = UIImage(named: "coal.png")
        // Сохраняет пропорции, вписывая изображение в frame
        myImage.contentMode = .scaleAspectFit
        self.view.addSubview(myImage)
    }
    
    private func createLabel() {
        //      настраиваем метку и добавляем ее на экран
        let labelFrame = CGRect(x: 113, y: 156, width: 173, height: 48)
        myLabel.frame = labelFrame
        myLabel.text = "I Am Poor"
        if let font = UIFont(name: "HelveticaNeue", size: 40) {
            myLabel.font = font
        } else {
            // если шрифт не найден
            let font = UIFont.systemFont(ofSize: 40)
        }
        myLabel.adjustsFontSizeToFitWidth = true
        myLabel.sizeToFit()
        myLabel.textColor = .brown
        self.view.addSubview(myLabel)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        вызов функций
        createLabel()
        createImageView()
    
            
        }

}

