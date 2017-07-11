//
//  ToDoMasterTableViewCell.h
//  EveryDo2
//
//  Created by swcl on 2017-07-11.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

@interface ToDoMasterTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;

- (void)prepareMasterCell:(ToDo*)toDo;

@end
