//
//  AppDelegate.m
//  project1
//
//  Created by Craig Booker on 1/30/12.
//  Copyright (c) 2012 Appscient, LLC. All rights reserved.
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
    
    /* :::::::::::: STORY :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
     Sheldon, Leonard, Raj, Penny, and the gang are all their normal self.  Except for Leonard.  He awoke this morning with a fever of 101 degrees.  Sheldon
     awakes in the morning to find Leonard groaning over his morning breakfast. Leonard describes to Sheldon his fever and the onset of a terrible headache. 
     The night before the whole gang got together for Thai food and to play halo.  Sheldon is being his normal paranoid self wondering how long until each of
     them gets sick.
     Sheldon is busy on the whtieboard drawing up equations to determine when he(Sheldon) will get sick.  He is looking at the different variables.
     A new person who works with Howard in the engineering department had been complaining about recovering from the flu two days earlier.  He is weary
     of the Thai restaurant because of the weird looking cook he ran into while picking up their order that night.  Figuring that none of the others became
     ill afterwards, he concludes that it must be Howard's coworker in engineering. Convinced that there must be a weakness in Leonard's immune system
     Sheldon insists on measuring everyone's white blood cell count over the next three days to rule anything out.  That day and over the next two days he
     measures everyone's white blood cell count.  Sheldon is reminded by Raj that T-cells and B-cells also play a role in the body's defense against disease. 
     Sheldon insists it is the white blood cell count.
     */
    
    /*:::::::::::: UNUSED VARS ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
    int minNumHoursNeeded = 18;  Minimum hours needed incubation time 
    int normCellCount = 1;  Average White blood cell count for healthy human. Makes up about 1% of blood in an adult . 
    float avgHoursSleep = 5.5f;  Leonard's avg hours of sleep. 
    float leonardsAvgCellCount = 0.877f;  Average White blood cell count for Leonard from three days time. 
    int feverMinVal = 100;  Low end range for fever. 
    int feverMaxVal = 106;  High end range for fever. 
    int minCellCountNeeded = 150;
    bool isSick = false;
    int numHoursInTwoWeeks = 336;
    int hoursRemaining = numHoursInTwoWeeks;
     :::::::::::: END - UNUSED VARS :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */
    
/* ::::::::::::: Variable Declarations ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */
    float numHoursSinceExposure = 22.05f; /* Number of hours since Leonard was exposed. */
    bool hasHadFever = true;
    bool hadHeadache = false;

    
    /* The names of the players */
    NSMutableArray *playersArray = [NSMutableArray arrayWithObjects:@"Sheldon", @"Howard", @"Penny", @"Raj", nil];
    
    /* What Sheldon says during feedback */
    NSMutableArray *sheldonSaysArray = [NSMutableArray arrayWithObjects:@"You can't be too careful.", @"My mother always told me...", @"Growing up in Texas, we took the flu seriously.", @"What is with you guys!",@"You can't be too careful.", @"My mother always told me...", @"Growing up in Texas, we took the flu seriously.", @"What is with you guys!",@"You can't be too careful.", @"My mother always told me...", @"Growing up in Texas, we took the flu seriously.", @"What is with you guys!",@"You can't be too careful.", @"My mother always told me...", nil];
    
    /* What Howard says during feedback */
    NSMutableArray *howardSaysArray = [NSMutableArray arrayWithObjects:@"Sheldon let us go!", @"Penny, since we are in here why don't we get to know each other.", @"I could be at home with Bernadette", @"When will this be over!", @"Penny, since we are in here why don't we get to know each other.", @"I could be at home with Bernadette", @"When will this be over!", @"Penny, since we are in here why don't we get to know each other.", @"I could be at home with Bernadette", @"When will this be over!", @"Penny, since we are in here why don't we get to know each other.", @"I could be at home with Bernadette", @"When will this be over!",@"Sheldon let us go!", nil];
    
    /* What Penny says during feedback */
    NSMutableArray *pennySaysArray = [NSMutableArray arrayWithObjects:@"Sheldon let us go!", @"Howard, give it up!", @"Raj, seriously?  You still can't talk?", @"Where is Leonard", @"Sheldon let us go!", @"Howard, give it up!", @"Raj, seriously?  You still can't talk?", @"Where is Leonard", @"Sheldon let us go!", @"Howard, give it up!", @"Raj, seriously?  You still can't talk?", @"Where is Leonard",@"Sheldon let us go!", @"Howard, give it up!", nil];
    
    /* What Raj says during feedback */
    NSMutableArray *rajSaysArray = [NSMutableArray arrayWithObjects:@"I want to go to the comicbook store.", @"I would like a grasshopper please.  With a straw", @"Someone hold Sheldon while the rest of us run.", @"Do we get Thai food tonight?",@"I want to go to the comicbook store.", @"I would like a grasshopper please.  With a straw", @"Someone hold Sheldon while the rest of us run.", @"Do we get Thai food tonight?",@"I want to go to the comicbook store.", @"I would like a grasshopper please.  With a straw", @"Someone hold Sheldon while the rest of us run.", @"Do we get Thai food tonight?",@"I want to go to the comicbook store.", @"I would like a grasshopper please.  With a straw", nil];
    
    /* Player average white blood cell count */
    NSMutableArray *playerAvgCellCountArray = [NSMutableArray arrayWithObjects:@"200", @"185", @"277", @"250", nil];    
 
/* ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
 (2) Cast the float to an int 
 ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */
    
    /* Cast the float var numbHoursSinceExposure to an int. */
    int baseMinimumSinceExposure = (int)numHoursSinceExposure; 
    
    /* Output both the float and the float var that was cast to an int to the console */
    NSLog(@"The numHoursSinceExposure = %f, and the baseMinimumSinceExposure = %d",  numHoursSinceExposure, baseMinimumSinceExposure);
    


/* ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
 (3 and 4) Use an if, else if and else check using any of the data types of your choice. Perform an AND, OR comparison.  
 ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */
  
    /* 
     Title: The Nebraska Way to Check for Flu
     Description: Penny explains how they check for flu in Nebraska.  She explains that it's not very scientific, but it works well for Nebraskans.
     */
    

    if ((hasHadFever == true) || (hadHeadache == true)) 
    {
        NSLog(@"Sheldon: According to the Nebraskan method you might be getting the flu.");
    }
    else if ((hasHadFever == true) && (hadHeadache == true))
    {
        NSLog(@"Sheldon: According to the Nebraskan method you are definitely sick.  Stay away!");
    }
    else {
        NSLog(@"Penny: we are not sick, I wish Sheldon would quit!");
    }

/* ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
 (5) Perform a single for loop printing out values to the console. 
 (6) Perform a nested loop printing out values to the console.
 (7) Perform a while loop that increments an int variable and outputs to the console.
 ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: */    
    /* 
     Title: The Team Speaks of their containment while Sheldon checks their white blood cell count.
     Descirption: Sheldon insists that all of them be quarantined for 14 days to lower the risk of the flu spreading.  During this time, he will test their white blood cell count each day to obtain an average white blood cell count for each player.
    */

    
    for (int i=1; i<14; i++) {
        int d = i + 1;
        int breaker = d;
        //int j = 0;
        NSLog (@"Sheldon: %@", [sheldonSaysArray objectAtIndex:i]);
        NSLog (@"Howard: %@", [howardSaysArray objectAtIndex:i]);
        NSLog (@"Penny: %@", [pennySaysArray objectAtIndex:i]);
        NSLog (@"Raj whispers to Howard: %@", [rajSaysArray objectAtIndex:i]);
        NSLog(@"Here we are at the end of day %d", d);
        while (breaker == 14) {
            NSLog (@"Sheldon: Drumroll please. (pause) AND NOW.....Here are the results!");
            for (int j=0; j<4; j++) {
                NSLog (@"%@'s average white blood cell count: %@", [playersArray objectAtIndex:j],  [playerAvgCellCountArray objectAtIndex:j]);
            }
            breaker++;
        }
    }
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
