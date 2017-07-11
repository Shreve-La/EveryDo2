//
//  DetailViewController.h
//  EveryDo2
//
//  Created by swcl on 2017-07-11.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ToDo;

@interface DetailViewController : UIViewController

@property (strong, nonatomic) ToDo *detailItem;

@end

