//
//  CatGameViewController.swift
//  CatGameTSIS2019-1
//
//  Created by Adrian on 11/14/18.
//  Copyright © 2018 Adrian. All rights reserved.
//

import UIKit

class CatGameViewController: UIViewController {
    
 
    @IBOutlet weak var image0_0: UIImageView!
    @IBOutlet weak var image0_1: UIImageView!
    @IBOutlet weak var image0_2: UIImageView!
    @IBOutlet weak var image1_0: UIImageView!
    @IBOutlet weak var image1_1: UIImageView!
    @IBOutlet weak var image1_2: UIImageView!
    @IBOutlet weak var image2_0: UIImageView!
    @IBOutlet weak var image2_1: UIImageView!
    @IBOutlet weak var imagen2_2: UIImageView!
    
    
    
    @IBOutlet weak var turnOfPlayerWithToekn: UILabel!
    @IBOutlet weak var winCounterLabel: UILabel!
    @IBOutlet weak var winCounterPlayer2Label: UILabel!
    @IBOutlet weak var gameCounterLabel: UILabel!
    
    //Funcion para determinar quien empieza
    let whoStart = witchPlayer.selectPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//    func whoStarts(player1: Bool, player2: Bool) -> Bool {
//        if whoStart {
//            pplayer1 = true
//            return true
//        }
//            pplayer2 = false
//            return false
//    }
    var auxiliar = 1
    
    @IBAction func button0_0(_ sender: UIButton) {
        if (auxiliar == 1 || auxiliar == 3 || auxiliar == 5 || auxiliar == 7 || auxiliar == 9){
            image0_0.image = UIImage(named: "Equis")
        }else if (auxiliar == 2 || auxiliar == 4 || auxiliar == 6 || auxiliar == 8 || auxiliar == 10){
            image0_0.image = UIImage(named: "ccirculo")
        }
        sender.isEnabled = false
        checkIfYouWin()
        auxiliar += 1
        
    }
    
    @IBAction func buton0_1(_ sender: UIButton) {
        if (auxiliar == 1 || auxiliar == 3 || auxiliar == 5 || auxiliar == 7 || auxiliar == 9){
            image0_1.image = UIImage(named: "Equis")
        }else if (auxiliar == 2 || auxiliar == 4 || auxiliar == 6 || auxiliar == 8 || auxiliar == 10){
            image0_1.image = UIImage(named: "ccirculo")
        }
            sender.isEnabled = false
            checkIfYouWin()
            auxiliar += 1

    }
    
    @IBAction func buton0_2(_ sender: UIButton) {
        if (auxiliar == 1 || auxiliar == 3 || auxiliar == 5 || auxiliar == 7 || auxiliar == 9){
            image0_2.image = UIImage(named: "Equis")
        }else if (auxiliar == 2 || auxiliar == 4 || auxiliar == 6 || auxiliar == 8 || auxiliar == 10){
            image0_2.image = UIImage(named: "ccirculo")
        }
            sender.isEnabled = false
            checkIfYouWin()
            auxiliar += 1

    }
    
    @IBAction func buton1_0(_ sender: UIButton) {
        if (auxiliar == 1 || auxiliar == 3 || auxiliar == 5 || auxiliar == 7 || auxiliar == 9){
            image1_0.image = UIImage(named: "Equis")
        }else if (auxiliar == 2 || auxiliar == 4 || auxiliar == 6 || auxiliar == 8 || auxiliar == 10){
            image1_0.image = UIImage(named: "ccirculo")
        }
            sender.isEnabled = false
            checkIfYouWin()
            auxiliar += 1
        
    }
    
    @IBAction func buton1_1(_ sender: UIButton) {
        if (auxiliar == 1 || auxiliar == 3 || auxiliar == 5 || auxiliar == 7 || auxiliar == 9){
            image1_1.image = UIImage(named: "Equis")
        }else if (auxiliar == 2 || auxiliar == 4 || auxiliar == 6 || auxiliar == 8 || auxiliar == 10){
            image1_1.image = UIImage(named: "ccirculo")
        }
            sender.isEnabled = false
            checkIfYouWin()
            auxiliar += 1
    }

    @IBAction func buton1_2(_ sender: UIButton) {
        if (auxiliar == 1 || auxiliar == 3 || auxiliar == 5 || auxiliar == 7 || auxiliar == 9){
            image1_2.image = UIImage(named: "Equis")
        }else if (auxiliar == 2 || auxiliar == 4 || auxiliar == 6 || auxiliar == 8 || auxiliar == 10){
            image1_2.image = UIImage(named: "ccirculo")
        }
            sender.isEnabled = false
            checkIfYouWin()
            auxiliar += 1
    }
    
    @IBAction func buton2_0(_ sender: UIButton) {
        if (auxiliar == 1 || auxiliar == 3 || auxiliar == 5 || auxiliar == 7 || auxiliar == 9){
            image2_0.image = UIImage(named: "Equis")
        }else if (auxiliar == 2 || auxiliar == 4 || auxiliar == 6 || auxiliar == 8 || auxiliar == 10){
            image2_0.image = UIImage(named: "ccirculo")
        }
            sender.isEnabled = false
            checkIfYouWin()
            auxiliar += 1

    }
    
    @IBAction func buton2_1(_ sender: UIButton) {
        if (auxiliar == 1 || auxiliar == 3 || auxiliar == 5 || auxiliar == 7 || auxiliar == 9){
            image2_1.image = UIImage(named: "Equis")
        }else if (auxiliar == 2 || auxiliar == 4 || auxiliar == 6 || auxiliar == 8 || auxiliar == 10){
            image2_1.image = UIImage(named: "ccirculo")
        }
            sender.isEnabled = false
            checkIfYouWin()
            auxiliar += 1
    }
    
    @IBAction func buton2_2(_ sender: UIButton) {
        if (auxiliar == 1 || auxiliar == 3 || auxiliar == 5 || auxiliar == 7 || auxiliar == 9){
            imagen2_2.image = UIImage(named: "Equis")
        }else if (auxiliar == 2 || auxiliar == 4 || auxiliar == 6 || auxiliar == 8 || auxiliar == 10){
            imagen2_2.image = UIImage(named: "ccirculo")
        }
            sender.isEnabled = false
            checkIfYouWin()
            auxiliar += 1

    }
    
    func checkIfYouWin() {
        //posibilidad 1  XXX
        if (image0_0.image == UIImage(named: "Equis") && image0_1.image == UIImage(named: "Equis") && image0_2.image == UIImage(named: "Equis") ) {
            print("YOU WIN! X")
        }
        //posibilidad 2 ---
        //              XXX
        else if (image1_0.image == UIImage(named: "Equis") && image1_1.image == UIImage(named: "Equis") && image1_2.image == UIImage(named: "Equis") ) {
                print("YOU WIN! X")
        }
            //posibilidad 3 ---
        //                  ---
        //                  XXX
        else if (image2_0.image == UIImage(named: "Equis") && image2_1.image == UIImage(named: "Equis") && imagen2_2.image == UIImage(named: "Equis") ) {
            print("YOU WIN! X")
        }
            //posibilidad 4  X
            //               X
            //               X
        else if (image0_0.image == UIImage(named: "Equis") && image1_0.image == UIImage(named: "Equis") && image2_0.image == UIImage(named: "Equis") ) {
            print("YOU WIN! X")
        }
            //posibilidad 5  -X
            //               -X
            //               -X
        else if (image0_1.image == UIImage(named: "Equis") && image1_1.image == UIImage(named: "Equis") && image2_1.image == UIImage(named: "Equis") ) {
            print("YOU WIN! X")
        }
            //posibilidad 6 --X
            //              --X
            //              --X
        else if (image0_2.image == UIImage(named: "Equis") && image1_2.image == UIImage(named: "Equis") && imagen2_2.image == UIImage(named: "Equis") ) {
            print("YOU WIN! X")
        }
            //posibilidad 7  X
            //               -X
            //               --X
        else if (image0_0.image == UIImage(named: "Equis") && image1_1.image == UIImage(named: "Equis") && imagen2_2.image == UIImage(named: "Equis") ) {
            print("YOU WIN! X")
        }
            //posibilidad 8  --X
            //               -X
            //               X
        else if (image0_2.image == UIImage(named: "Equis") && image1_1.image == UIImage(named: "Equis") && image2_0.image == UIImage(named: "Equis") ) {
            print("YOU WIN! X")
        }
        
        
        
        //posibilidad 9  OOO
        else if (image0_0.image == UIImage(named: "ccirculo") && image0_1.image == UIImage(named: "ccirculo") && image0_2.image == UIImage(named: "ccirculo") ) {
            print("YOU WIN! O")
        }
            //posibilidad 10---
            //              OOO
        else if (image1_0.image == UIImage(named: "ccirculo") && image1_1.image == UIImage(named: "ccirculo") && image1_2.image == UIImage(named: "ccirculo") ) {
            print("YOU WIN! O")
        }
            //posibilidad 11---
            //              ---
            //              OOO
        else if (image2_0.image == UIImage(named: "ccirculo") && image2_1.image == UIImage(named: "ccirculo") && imagen2_2.image == UIImage(named: "ccirculo") ) {
            print("YOU WIN! O")
        }
            //posibilidad 12 O
            //               O
            //               O
        else if (image0_0.image == UIImage(named: "ccirculo") && image1_0.image == UIImage(named: "ccirculo") && image2_0.image == UIImage(named: "ccirculo") ) {
            print("YOU WIN! O")
        }
            //posibilidad 13 -O
            //               -O
            //               -O
        else if (image0_1.image == UIImage(named: "ccirculo") && image1_1.image == UIImage(named: "ccirculo") && image2_1.image == UIImage(named: "ccirculo") ) {
            print("YOU WIN! O")
        }
            //posibilidad 14--O
            //              --O
            //              --O
        else if (image0_2.image == UIImage(named: "ccirculo") && image1_2.image == UIImage(named: "ccirculo") && imagen2_2.image == UIImage(named: "ccirculo") ) {
            print("YOU WIN! O")
        }
            //posibilidad 15 O
            //               -O
            //               --O
        else if (image0_0.image == UIImage(named: "ccirculo") && image1_1.image == UIImage(named: "ccirculo") && imagen2_2.image == UIImage(named: "ccirculo") ) {
            print("YOU WIN! O")
        }
            //posibilidad 16 --O
            //               -O
            //               O
        else if (image0_2.image == UIImage(named: "ccirculo") && image1_1.image == UIImage(named: "ccirculo") && image2_0.image == UIImage(named: "ccirculo") ) {
            print("YOU WIN! O")
        }
        
    }
    
    func clearBoardAFterWin(){
        
    }
    
//
//    func flowOfGame() -> Int{
//        debugPrint(whoStart)
//        let player1 = 1
//        let player2 = 2
//       // auxiliar = witchPlayer.selectPlayer()
//        var myAuxiliar = 0
//        if whoStart == true {
//            myAuxiliar = 1
//            //Empieza el jugador 1
//           // for _ in 1...9{
//                myAuxiliar += 1
//                debugPrint(myAuxiliar)
//
//            //}
//            return myAuxiliar
//        } else {
//            //Empieza el jugador 2
//            myAuxiliar = 2
//            //for _ in 1...9{
//                myAuxiliar += 1
//            debugPrint(myAuxiliar)
//           //   }
//            return myAuxiliar
//        }
//    }
    
    
//    func fillBoard() {
//
//         //   var anotherAux = 1
//           // debugPrint(anotherAux)
//           // if (index == 1 || index == 3 || index == 5 || index == 7 || index == 9){
//                if image0_0.image == UIImage(named: "whiteBackGround") {
//                    image0_0.image = UIImage(named: "ccirculo")
//                    index += 1
//                }
//                else if image0_1.image == UIImage(named: "whiteBackGround") {
//                    image0_1.image = UIImage(named: "ccirculo")
//                   index += 1
//                }
//                else if image0_2.image == UIImage(named: "whiteBackGround") {
//                    image0_2.image = UIImage(named: "ccirculo")
//                    index += 1
//                }
//                else if image1_0.image == UIImage(named: "whiteBackGround") {
//                    image1_0.image = UIImage(named: "ccirculo")
//                    index += 1
//                }
//                else if image1_1.image == UIImage(named: "whiteBackGround") {
//                    image1_1.image = UIImage(named: "ccirculo")
//                    index += 1
//                }
//                else if image1_2.image == UIImage(named: "whiteBackGround") {
//                    image1_2.image = UIImage(named: "ccirculo")
//                    index += 1
//                }
//                else if image2_0.image == UIImage(named: "whiteBackGround") {
//                    image2_0.image = UIImage(named: "ccirculo")
//                    index += 1
//                }
//                else if image2_1.image == UIImage(named: "whiteBackGround") {
//                    image2_1.image = UIImage(named: "ccirculo")
//                    index += 1
//                }
//                else if imagen2_2.image == UIImage(named: "whiteBackGround") {
//                    imagen2_2.image = UIImage(named: "ccirculo")
//                    index += 1
//                }
//           // } else if (index == 2 || index == 4 || index == 6 || index == 8 || index == 10) {
//                if image0_0.image == UIImage(named: "whiteBackGround") {
//                    image0_0.image = UIImage(named: "Equis")
//                    index += 1
//                }
//                else if image0_1.image == UIImage(named: "whiteBackGround") {
//                    image0_1.image = UIImage(named: "Equis")
//                    index += 1
//                }
//                else if image0_2.image == UIImage(named: "whiteBackGround") {
//                    image0_2.image = UIImage(named: "Equis")
//                    index += 1
//                }
//                else if image1_0.image == UIImage(named: "whiteBackGround") {
//                    image1_0.image = UIImage(named: "Equis")
//                    index += 1
//                }
//                else if image1_1.image == UIImage(named: "whiteBackGround") {
//                    image1_1.image = UIImage(named: "Equis")
//                    index += 1
//                }
//                else if image1_2.image == UIImage(named: "whiteBackGround") {
//                    image1_2.image = UIImage(named: "Equis")
//                    index += 1
//                }
//                else if image2_0.image == UIImage(named: "whiteBackGround") {
//                    image2_0.image = UIImage(named: "Equis")
//                    index += 1
//                }
//                else if image2_1.image == UIImage(named: "whiteBackGround") {
//                    image2_1.image = UIImage(named: "Equis")
//                    index += 1
//                }
//                else if imagen2_2.image == UIImage(named: "whiteBackGround") {
//                    imagen2_2.image = UIImage(named: "Equis")
//                    index += 1
//                }
//          //  }
//
//      }
    //----------------------------->


}
//Player 1 = true
//player 2 = false
