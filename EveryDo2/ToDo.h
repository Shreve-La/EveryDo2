//
//  ToDo.h
//  EveryDo2
//
//  Created by swcl on 2017-07-11.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDo : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *toDoDescriptions;
@property (nonatomic) NSNumber* priority;
@property (nonatomic) BOOL completed;
@end
