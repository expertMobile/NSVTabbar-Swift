# NSVTabbar-Swift
To Create the different animation on UITabBar Controller 

# List of Animations

**1) BOUNCE**

**2) FILP**

**3) FADE** 

**4) CROSS-DISSOLVE**

**5) CURL** 

# TabBar Images Conifgiration 

 **To Create the TabBar icons as NSArray**
 
    let imagesArray : NSArray = ["home.png","maps.png","myplan.png","settings.png","maps.png"]
    
  To Create the TabBar icons as NSArray for selection time
    
     let  selecteimgArray:NSArray = ["home_selected.png","maps_selected.png","myplan_selected.png","settings_selected.png","maps_selected.png"]
 
  Customize the tabBar images
   To Create the attribute dictionary for title for color and font
    NSVBarController.setTabbar(self.tabBar, images:imagesArray, selectedImages: selecteimgArray)
    
# TabBar Title Customization

 **To Create the attribute dictionary for title for color and font**
  // Customize the tabBar title
 
    let attributes = [NSForegroundColorAttributeName:UIColor.whiteColor()]
    NSVBarController.setTabBarTitleColor(attributes)
  
# TabBar Image Animation 

    [NSVBarController setAnimation:tabBarController andAnimationType:NSAnimation_CurlDown];

