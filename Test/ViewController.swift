//
//  ViewController.swift
//  Test
//
//  Created by 謝飛飛 on 2021/2/9.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate {
// left extend right
//  class A son: A parent, ability B, ability C{}
// var is variable that is changable ; let means the constant can not change

    @IBOutlet var lab2: UILabel!
    @IBOutlet var lab: UILabel!

    @IBOutlet var input: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lab2.text = "ABC"
        input.delegate = self

        foo()
    }

    func foo() {
        //! case => crash
//        var count: Int!
//        count = 8
//        count = nil
//        print(count + 1)

        //? case => beause default value, print 1
//        var count2: Int? //Int? with Int is diff Type
//        count2 = 8
//        count2 = nil
//        print(count2 ?? 0 + 1)

        //normal case => can't be nil
//        var count3: Int
//        count3 = 8
//        count3 = nil

    }

    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {



        return true
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("RETURN")

        let value = Int(textField.text ?? "") ?? 0

        if value > 2000 {
            lab2.text = "good"
        } else {
            lab2.text = "bad"
        }
        return true
    }

    @IBAction func tap(_ sender: Any) {
    }



    //app has two parts: interface and languagu
        //1. interface has two kinds: storyboard* and SwiftUI
            //connect has two kinds: outlet and action
            //IB = interface builder
        //2. language has two kinds: swift* and Objective-C
            //viewdidload must be execute
            //pattern: delegate
            //optional: it maybe become NULL(nil)  ? is optional ; ! is also optional
            // after type's ! means have value forever
    //app archtecture has three parts: M(Model) V(View) C(Controller)
    //Xcode IDE(Intergret Developmebt Envionment)
    //bundle id: app ID

}

