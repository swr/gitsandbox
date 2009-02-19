//
//  RecipesAppDelegate.h
//  Recipes
//
//  Created by Adam Bovill on 2/18/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RecipesViewController;

@interface RecipesAppDelegate : NSObject <UIApplicationDelegate> {
	IBOutlet UIWindow *window;
	IBOutlet RecipesViewController *viewController;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) RecipesViewController *viewController;

@end

