//
//  AppDelegate.m
//  project1
//
//  Created by Craig Booker on 1/30/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    /*  Sheldon, Leonard, Raj, Penny, and the gang are all their normal self.  Except for Leonard.  He awoke this morning with a fever of 101 degrees.  Sheldon awakes in the morning to find Leonard groaning over his morning breakfast. Leonard describes to Sheldon his fever and the onset of a terrible headache.  The night before the whole gang got together for Thai food and to play halo.  Sheldon is being his normal paranoid self wondering how long until each of them gets sick.
         Sheldon is busy on the whtieboard drawing up equations to determine when he(Sheldon) will get sick.  He is looking at the different variables.
         A new person who works with Howard in the engineering department had been complaining about recovering from the flu two days earlier.  He is weary of the Thai restaurant because of the weird looking cook he ran into while picking up their order that night.  Figuring that none of the others became ill afterwards, he concludes that it must be Howard's coworker in engineering. Convinced that there must be a weakness in Leonard's immune system Sheldon insists on measuring everyone's white blood cell count over the next three days to rule anything out.  That day and over the next two days he measures everyone's white blood cell count.  Sheldon is reminded by Raj that T-cells and B-cells also play a role in the body's defense against disease.  Sheldon insists it is the white blood cell count.
     */
    // boolean logic operators
    /*
     == equals
     != not equal
     < less than
     
     > greater than
     && and
     || or
     */
    // for loops forward
    /*for (int x=0; x,10; x++)
     {
     NSLog(@"hello: %d", x);
     }
     */
    
    //int minNumHoursNeeded = 18; /* Minimum hours needed incubation time */
    //int normCellCount = 1; /* Average White blood cell count for healthy human. Makes up about 1% of blood in an adult . */
    float minCellCountNeeded = 0.89f; /* Cell count needed to reduce risk of flu */
    float numHoursSinceExposure = 22.05f; /* Number of hours since Leonard was exposed. */
    //float avgHoursSleep = 5.5f; /* Leonard's avg hours of sleep. */
    //float leonardsAvgCellCount = 0.877f; /* Average White blood cell count for Leonard from three days time. */
    
    float rajAvgCellCount = 1.01f; /* Average White blood cell count for Raj. */
    float howardAvgCellCount = 0.98f; /* Average White blood cell count for Howard. */
    float sheldonAvgCellCount = 0.95f; /* Average White blood cell count for Sheldon. */
    float pennyAvgCellCount = 0.99f;  /* Average White blood cell count for Penny. */
    
  
    int baseMinimumSinceExposure = (int)numHoursSinceExposure; /* Cast the float var numbHoursSinceExposure to an int. */
    NSLog(@"numHoursSinceExposure=%f, baseMinimumSinceExposure=%d",  numHoursSinceExposure, baseMinimumSinceExposure);
    

    //int feverMinVal = 100; /* Low end range for fever. */
    //int feverMaxVal = 106; /* High end range for fever. */
  
    /* Penny's way to check for flu. 
     Penny explains how they check for flu in Nebraska.
     
     */
    bool hasHadFever = true;
    bool hadHeadache = false;
    if ((hasHadFever == true) || (hadHeadache == true)) 
    {
        NSLog(@"Might be getting the flu.");
    }
    else if ((hasHadFever == true) && (hadHeadache == true))
    {
        NSLog(@"You are definitely sick.  Stay away!");
    }
    else {
        NSLog(@"Not sick, I wish Sheldon would quit!");
    }
    /*float count = 0;
    
    while (count > minCellCountNeeded) {
        NSLog(@"Say hello to count=%f", count);
        count++;
    }
    */
    bool isSick = false;
    int numHoursInTwoWeeks = 336;
    int hoursRemaining = numHoursInTwoWeeks;
    float rajCellCount = rajAvgCellCount;
    float howardCellCount = howardAvgCellCount;
    float sheldonCellCount = sheldonAvgCellCount;
    float pennyCellCount = pennyAvgCellCount; 
    /* The Team Speaks of their containment */
    for (int x=1; x < 15; x++) {
        NSLog(@"Here we are at the end of day=%d", x);
        hoursRemaining = (hoursRemaining - 24);
        NSLog(@"Howard: Common' we only have hours left=%d", hoursRemaining);
        NSLog(@"Raj whispers to Howard that he wants to go get comic books.");
        NSLog(@"Penny: And we are NOT sick Sheldon!");
        int y = x+1;
        if (isSick == false) {
            sheldonCellCount = (((sheldonCellCount+sheldonCellCount)/y));
            NSLog(@"Sheldon's Count =%f", sheldonCellCount);
            howardCellCount = (((howardAvgCellCount+howardCellCount)/y));
            NSLog(@"Howard's Count =%f", howardCellCount);
            pennyCellCount = (((pennyAvgCellCount+pennyCellCount)/y));
            NSLog(@"Penny's Count =%f", pennyCellCount);
            rajCellCount = (((rajAvgCellCount+rajCellCount)/y));
            NSLog(@"Raj's Count =%f", rajCellCount);
            
            if ((sheldonCellCount < minCellCountNeeded) || (howardCellCount < minCellCountNeeded))
            {
                isSick = true;
                
            }
            else if ((pennyCellCount < minCellCountNeeded) || (rajCellCount < minCellCountNeeded))     
            {           
                isSick = true;
            }
            else {
                NSLog(@"Keep on movin, no one appears to be sick.");
            }       
        
        }
        else if (isSick == true) {
            break;
        }
    }
        //for (int y=14; y > 0; y--) {
 /*       do {
            sheldonCellCount = ((sheldonAvgCellCount+sheldonCellCount)/x);
            NSLog(@"Sheldon's Count =%f", sheldonCellCount);
            howardCellCount = ((howardAvgCellCount+howardCellCount)/x);
            NSLog(@"Howard's Count =%f", howardCellCount);
            pennyCellCount = ((pennyAvgCellCount+pennyCellCount)/x);
            NSLog(@"Penny's Count =%f", pennyCellCount);
            rajCellCount = ((rajAvgCellCount+rajCellCount)/x);
            NSLog(@"Raj's Count =%f", rajCellCount);

            if ((sheldonCellCount < minCellCountNeeded) || (howardCellCount < minCellCountNeeded))
            {
                isSick = true;

            }
            else if ((pennyCellCount < minCellCountNeeded) || (rajCellCount < minCellCountNeeded))     
  {           
  isSick = true;
  }
            else {
                NSLog(@"Keep on movin, no one appears to be sick.");
            }
        }
        while (isSick == false);
        
*/

    
    return YES;

}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
