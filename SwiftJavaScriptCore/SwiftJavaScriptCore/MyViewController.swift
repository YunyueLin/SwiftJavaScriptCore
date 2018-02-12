//
//  ViewController.swift
//  SwiftJavaScriptCore
//
//  Created by 林赟越 on 2018/2/12.
//  Copyright © 2018年 林赟越. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(nextBtn)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    lazy var nextBtn = { () -> UIButton in
        let nextBtn = UIButton.init(frame: CGRect(x: 100, y: 100, width: 300, height: 100))
        
        nextBtn.setTitle("跳转到 WebView", for: .normal)
        nextBtn.setTitleColor(.black, for: .normal)
        
        nextBtn.addTarget(self, action: #selector(clickNextBtn(sender:)), for: .touchUpInside)
        
        return nextBtn
    }()
    
    
}

extension MyViewController{
    @objc func clickNextBtn(sender:UIButton){
        navigationController?.pushViewController(LyyWebViewController(), animated: true)
    }
}



