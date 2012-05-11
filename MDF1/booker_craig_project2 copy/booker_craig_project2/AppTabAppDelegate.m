

#import "AppTabAppDelegate.h"





@implementation AppDelegate

@synthesize window, myTableViewController, mySecondTableViewController, tabBarController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
    tabBarController = [[UITabBarController alloc] init];          // creates your tab bar so you can add everything else to it
    
    myTableViewController = [[MyTableViewController alloc] init];               // creates your table view - this should be a UIViewController with a table view in it, or UITableViewController
    UINavigationController *tableNavController = [[[UINavigationController alloc] initWithRootViewController:myTableViewController] autorelease];
    [myTableViewController release];                                                              // creates your table view's navigation controller, then adds the view controller you made. Note I then let go of the view controller as the navigation controller now holds onto it for me. This saves memory.
    
    mySecondTableViewController = [[MySecondTableViewController alloc] init];   
    UINavigationController *table2NavController = [[[UINavigationController alloc] initWithRootViewController:mySecondTableViewController] autorelease];
    [mySecondTableViewController release];                                                    // does exactly the same as the first round, but for your second tab at the bottom of the bar.
    
    tabBarController.viewControllers = [NSArray arrayWithObjects:tableNavController, table2NavController, nil]; add both of your navigation controllers to the tab bar. You can put as many controllers on as you like, but they will turn into the more button like in the iPod program.
    
    [window addSubview:tabBarController.view];                                              // adds the tab bar's view property to the window
    [window makeKeyAndVisible];                                                                  // makes the window visible
}

- (void)dealloc {
    [tabBarController release];
    [window release];
    [super dealloc];
}                                           // lets go of everything else, thats so your program doesn't create any leaks of memory.

@end
