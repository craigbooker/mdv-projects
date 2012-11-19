//
//  Product.h
//  DataStorage
//
//  Created by Alex Eckermann for MobileTuts+ on 20/01/11.
//  Creative Commons (cc) Attribution 3.0 Unported http://creativecommons.org/licenses/by/3.0/
//

#import <CoreData/CoreData.h>


@interface Product :  NSManagedObject  
{
}

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * price;

@end



