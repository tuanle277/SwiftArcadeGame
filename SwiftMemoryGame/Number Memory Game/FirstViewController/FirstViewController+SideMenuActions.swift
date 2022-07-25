//import UIKit
//
//extension FirstViewController
//{
//    func openSideMenuAction()
//    {
//        if !sideMenuOpened
//        {
//            self.shadowView.center = CGPoint(x: self.view.center.x + self.sideMenuView.frame.size.width, y: self.view.center.y)
//            self.shadowView.alpha = 0.6
//            UIView.animate(withDuration: 0.4, delay: 0)
//            {
//                self.sideMenuView.center = CGPoint(x: self.sideMenuView.center.x + self.sideMenuView.frame.width, y: self.sideMenuView.center.y)
//                self.sideMenuView.sideMenuDelegate = self
////                self.view.center = CGPoint(x: self.view.center.x + self.sideMenuView.frame.size.width, y: self.view.center.y)
//            }
//            sideMenuOpened = true
////            for i: UIView in self.view.subviews
////            {
////                if i != sideMenuView
////                {
////                    print(i)
////                    i.alpha = 0.2
////                }
////            }
//        }
//    }
//    
//    @IBAction func swipedOpenSideMenuAction(_ sender: UISwipeGestureRecognizer)
//    {
//        if !sideMenuOpened && sender.direction == .right
//        {
////            self.shadowView.center = CGPoint(x: self.view.center.x + self.sideMenuView.frame.size.width, y: self.view.center.y)
////            self.shadowView.alpha = 0.6
//            UIView.animate(withDuration: 0.4, delay: 0)
//            {
//                self.sideMenuView.center = CGPoint(x: self.sideMenuView.center.x + self.sideMenuView.frame.width, y: self.sideMenuView.center.y)
//                self.sideMenuView.sideMenuDelegate = self
////                self.view.center = CGPoint(x: self.view.center.x + self.sideMenuView.frame.size.width, y: self.view.center.y)
//            }
//            sideMenuOpened = true
////            for i: UIView in self.view.subviews
////            {
////                if i != sideMenuView
////                {
////                    print(i)
////                    i.alpha = 0.2
////                }
////            }
//        }
//    }
//    
//    @IBAction func sideMenuAction(_ sender: UIButton)
//    {
//        openSideMenuAction()
//    }
//    
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print("touches still work")
//        if sideMenuOpened
//        {
//            print("touches")
//            UIView.animate(withDuration: 0.4, delay: 0)
//            {
//                self.sideMenuView.center = CGPoint(x: self.sideMenuView.center.x - self.sideMenuView.frame.width, y: self.sideMenuView.center.y)
////                self.view.center = CGPoint(x: self.view.center.x - self.sideMenuView.frame.size.width, y: self.view.center.y)
//            }
//            sideMenuOpened = false
//            self.shadowView.center = CGPoint(x: self.view.center.x - self.sideMenuView.frame.size.width, y: self.view.center.y)
//            self.shadowView.alpha = 0
////            for i: UIView in self.view.subviews
////            {
////                if i != sideMenuView
////                {
////                    print(i)
////                    i.alpha = 1.0
////                }
////            }
//        }
//    }
//}
