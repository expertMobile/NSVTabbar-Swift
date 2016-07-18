//
//  NSVTabBarController.swift
//  NSVTabbar-Swift
//
//  Created by srinivas on 7/18/16.
//  Copyright © 2016 Microexcel. All rights reserved.
//

import UIKit


class NSVTabBarController: UITabBarController , UITabBarControllerDelegate{
    
    var selectedAnimation : NSInteger = NSAnimation_FILP_LEFT

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.delegate = self
        
        //*****// TabBar Icons Customization //*****//
        
        // To Create the TabBar icons as NSArray
        
        let imagesArray : NSArray = ["home.png","maps.png","myplan.png","settings.png","maps.png"]
        // To Create the TabBar icons as NSArray for selection time

        let  selecteimgArray:NSArray = ["home_selected.png","maps_selected.png","myplan_selected.png","settings_selected.png","maps_selected.png"]
        // Customize the tabBar images

        //*****//*****//*****//*****//*****//*****//*****//*****//
        
        //****// TabBar Title Customization //*****//
        
        // To Create the attribute dictionary for title for color and font
        NSVBarController.setTabbar(self.tabBar, images:imagesArray, selectedImages: selecteimgArray)
        
        // Customize the tabBar title
                let attributes = [NSForegroundColorAttributeName:UIColor.whiteColor()]
         NSVBarController.setTabBarTitleColor(attributes)
         //*****//*****//*****//*****//*****//*****//*****//*****//
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController) {
         //****// TabBar Images Animations //*****//
         NSVBarController.setAnimation(tabBarController, animationtype:selectedAnimation)
        //*****//*****//*****//*****//*****//*****//*****//*****//

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func buttonsTouched(sender:UIButton){
        selectedAnimation = sender.tag ;
    }

}
