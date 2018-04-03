//
//  PopBaseViewController.swift
//  StudyApp
//
//  Created by yaojinhai on 2017/10/14.
//  Copyright © 2017年 yaojinhai. All rights reserved.
//

import UIKit

class PopBaseViewController: YyBaseViewController,UIViewControllerTransitioningDelegate,UIGestureRecognizerDelegate {
    
    var transitionManger = TransitionManger();
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil);
    }
    
    convenience init() {
        self.init(nibName: nil, bundle: nil);
        self.transitioningDelegate = self;
        self.modalPresentationStyle = .custom;
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return CurrentModelContontroller(presentedViewController: presented, presenting: presenting);
    }
    
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transitionManger.isPresenting = false;
        return transitionManger;
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transitionManger.isPresenting = true;
        return transitionManger;
    }

    

}
