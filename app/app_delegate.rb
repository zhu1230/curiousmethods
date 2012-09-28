class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    Parse.setApplicationId "iLLylDLZhyzvCvFGINDm4DYZchukJ0ci2qT4lJxO", clientKey: "RPWzD2SEOTVXYWnvjQFL3yoRdvSd9XUIm6HzP4bf"    
    @window = UIWindow.alloc.initWithFrame UIScreen.mainScreen.bounds
    storyboard = UIStoryboard.storyboardWithName "Storyboard", bundle: nil
    @window.rootViewController = storyboard.instantiateInitialViewController
    @window.makeKeyAndVisible
    true
  end
end
