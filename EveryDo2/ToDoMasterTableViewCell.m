//
//  ToDoMasterTableViewCell.m
//  EveryDo2
//
//  Created by swcl on 2017-07-11.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "ToDoMasterTableViewCell.h"

@implementation ToDoMasterTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void)prepareCellWhenCompleted:(ToDo*)toDo{

       NSDictionary* attributes = @{NSStrikethroughStyleAttributeName: [NSNumber numberWithInt:NSUnderlineStyleSingle]};
       
       NSAttributedString* attributedTitle = [[NSAttributedString alloc] initWithString:toDo.title attributes:attributes];
       NSAttributedString* attributedDescription = [[NSAttributedString alloc] initWithString:toDo.toDoDescriptions attributes:attributes];
       NSAttributedString* attributedPriorityLevel = [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@",toDo.priority] attributes:attributes];
       
       self.titleLabel.attributedText = attributedTitle;
       self.descriptionLabel.attributedText = attributedDescription;
       self.priorityLabel.attributedText = attributedPriorityLevel;

}

- (void)prepareCellWhenInComplete:(ToDo*)toDo{
        self.titleLabel.text = toDo.title;
        self.descriptionLabel.text = toDo.toDoDescriptions;
        self.priorityLabel.text = [NSString stringWithFormat:@"%@", toDo.priority];
    }
       
       
       
       
       
       
@end
