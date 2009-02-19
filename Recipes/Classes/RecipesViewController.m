//
//  RecipesAppDelegate.m
//  Recipes
//
//  Created by Adam Bovill on 2/18/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "RecipesViewController.h"

@implementation RecipesViewController
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
		(NSIndexPath *)indexPath{
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"recipeCell"];
	if(nil==cell){
		cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier: 
				@"recipeCell"] autorelease]; 
	}
	if(indexPath.row==0){
		// cherry pie
		cell.text = @"Cherry pie";
	} else if(indexPath.row==1){
		// apple pie
		cell.text = @"Apple pie";
	} else if(indexPath.row==2){
		// chocolate cake
		cell.text = @"Chocolate Cake";
	}
	return cell;
}
- (NSInteger) tableView:(UITableView *)tv numberOfRowsInSection:(NSInteger)section{
	return 3;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)
    indexPath{
	NSLog(@"cell clicked {%d, %d}", indexPath.row, indexPath.section);
	
}

/*
 Implement loadView if you want to create a view hierarchy programmatically
- (void)loadView {
}
 */

/*
 Implement viewDidLoad if you need to do additional setup after loading the view.
- (void)viewDidLoad {
	[super viewDidLoad];
}
 */


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
	// Release anything that's not essential, such as cached data
}


- (void)dealloc {
	[super dealloc];
}

@end
