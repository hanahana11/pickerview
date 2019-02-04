////
////  ViewController.swift
////  pickerview
////
////  Created by 末利　花 on 2019/02/02.
////  Copyright © 2019年 末利　花. All rights reserved.
////
//
//import UIKit
//
//
//        // Do any additional setup after loading the view, typically from a nib.
//
//class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
//
//
   //@IBOutlet weak var testPickerView: UIPickerView!
//
//    @IBOutlet weak var testLabel: UILabel!
//
//    var timer:Timer = Timer()
//    var count:Int = 0
//
//
//
//    //時分秒のデータ
//    let dataList = [[Int](0...24), [Int](0...60), [Int](0...60), [Int](0...60)]
////    let dataList = [ 0,00,0,0,0,0,0,0] as [Any]
//
//    //最初からあるメソッド
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        //「時間」のラベルを追加
//        let hStr = UILabel()
//        hStr.text = "時間"
//        hStr.sizeToFit()
//        hStr.frame = CGRect(x: testPickerView.bounds.width/4 - hStr.bounds.width/2,
//                            y: testPickerView.bounds.height/2 - (hStr.bounds.height/2),
//                            width: hStr.bounds.width, height: hStr.bounds.height)
//        testPickerView.addSubview(hStr)
//
//        //「分」のラベルを追加
//        let mStr = UILabel()
//        mStr.text = "分"
//        mStr.sizeToFit()
//        mStr.frame = CGRect(x: testPickerView.bounds.width/2 - mStr.bounds.width/2,
//                            y: testPickerView.bounds.height/2 - (mStr.bounds.height/2),
//                            width: mStr.bounds.width, height: mStr.bounds.height)
//        testPickerView.addSubview(mStr)
//
//
//        //「秒」のラベルを追加
//        let sStr = UILabel()
//        sStr.text = "秒"
//        sStr.sizeToFit()
//        sStr.frame = CGRect(x: testPickerView.bounds.width*3/4 - sStr.bounds.width/2,
//                            y: testPickerView.bounds.height/2 - (sStr.bounds.height/2),
//                            width: sStr.bounds.width, height: sStr.bounds.height)
//        testPickerView.addSubview(sStr)
//
//    }
//
//    //コンポーネントの個数を返すメソッド
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return dataList.count
//    }
//
//    //コンポーネントに含まれるデータの個数を返すメソッド
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return 10
//    }
//
//
//    //サイズを返すメソッド
//    func pickerView(pickerView: UIPickerView, widthForComponent component:Int) -> CGFloat {
//        switch component {
//        case 0:
//            return 100
//        case 1:
//            return 50
//        default:
//            return 30
//        }
//
//    }
//
//
//    //データを返すメソッド
//    private func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView
//    {
//        let pickerLabel = UILabel()
//        pickerLabel.textAlignment = NSTextAlignment.left
//        pickerLabel.text = String(dataList[component][row])
//        pickerLabel.backgroundColor = UIColor.red
//        return pickerLabel
//    }
//
//    //ボタン押下時の呼び出しメソッド
//    @IBAction func startCountDown(sender: UIButton) {
//        //すでに動いているタイマーは停止する
//        timer.invalidate()
//
//        //カウントダウンする秒数を取得する。
//        count = dataList[0][testPickerView.selectedRow(inComponent: 0)] * 60 * 60
//            +  dataList[0][testPickerView.selectedRow(inComponent: 1)] * 60
//            +  dataList[0][testPickerView.selectedRow(inComponent: 2)]
//
//        //1秒周期でcountDownメソッドを呼び出すタイマーを開始する。
//        timer = Timer.scheduledTimer(timeInterval: 1, target:self, selector:Selector("countDown"), userInfo:nil, repeats:true)
//    }
//
//
//    //タイマーから呼び出されるメソッド
//    func countDown(){
//
//        //カウントを減らす。
//        count = count - 1
//
//        //カウントダウン状況をラベルに表示
//        if(count > 0) {
//            testLabel.text = "残り\(count)秒です。"
//        } else {
//            testLabel.text = "カウントダウン終了"
//            timer.invalidate()
//        }
//    }
//
//}
//
//
//class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var testPickerView: UIPickerView!
    
    //agepicker.numberOfRows(inComponent: 0)
    
// 選択肢
//let dataList = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
var dataArray:[Int] = ([Int])(0...100)
override func viewDidLoad() {
    super.viewDidLoad()
    
//    let dataList = [[Int](0...24), [Int](0...60), [Int](0...60), [Int](0...60)]
    //    let dataList = [ 0,00,0,0,0,0,0,0] as [Any]
    
        //最初からあるメソッド
    func viewDidLoad() {
            super.viewDidLoad()
    
            //「時間」のラベルを追加
            let hStr = UILabel()
            hStr.text = "時間"
            hStr.sizeToFit()
            hStr.frame = CGRect(x: testPickerView.bounds.width/4 - hStr.bounds.width/2,
                                y: testPickerView.bounds.height/2 - (hStr.bounds.height/2),
                                width: hStr.bounds.width, height: hStr.bounds.height)
            testPickerView.addSubview(hStr)
    
            //「分」のラベルを追加
            let mStr = UILabel()
            mStr.text = "分"
            mStr.sizeToFit()
            mStr.frame = CGRect(x: testPickerView.bounds.width/2 - mStr.bounds.width/2,
                                y: testPickerView.bounds.height/2 - (mStr.bounds.height/2),
                                width: mStr.bounds.width, height: mStr.bounds.height)
            testPickerView.addSubview(mStr)
    
    
            //「秒」のラベルを追加
            let sStr = UILabel()
            sStr.text = "秒"
            sStr.sizeToFit()
            sStr.frame = CGRect(x: testPickerView.bounds.width*3/4 - sStr.bounds.width/2,
                                y: testPickerView.bounds.height/2 - (sStr.bounds.height/2),
                                width: sStr.bounds.width, height: sStr.bounds.height)
            testPickerView.addSubview(sStr)
    
        }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataArray.count
    }
    /*
     pickerに表示する値を返すデリゲートメソッド.
     */
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataArray[row] as? String
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("row: \(row)")
        print("value: \(dataArray[row])")
     
        // ピッカーの作成
    let picker = UIPickerView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 100))
    picker.center = self.view.center
    
    // プロトコルの設定
    picker.delegate = self
    picker.dataSource = self
    
    // はじめに表示する項目を指定
    picker.selectRow(1, inComponent: 0, animated: true)
    
    // 画面にピッカーを追加
    self.view.addSubview(picker)
}

// UIPickerViewDataSource

func numberOfComponents(in pickerView: UIPickerView) -> Int {
    // 表示する列数
    return 1
}

func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    // アイテム表示個数を返す
    return dataArray.count
}

// UIPickerViewDelegate

func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    // 表示する文字列を返す
    return String(dataArray[row]) + "分"
}

func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    // 選択時の処理
    print(dataArray[row])
}
}
}
