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

- (void)prepareMasterCell:(ToDo*)toDo{
//    if(!toDo.completed) {
        self.titleLabel.text = toDo.title;
        self.descriptionLabel.text = toDo.toDoDescriptions;
        self.priorityLabel.text = [NSString stringWithFormat:@"%@", toDo.priority];
//    }else{
//        NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:toDo.title];
//        [attributeString addAttribute:NSStrikethroughStyleAttributeName
//                                value:@2
//                                range:NSMakeRange(0, [attributeString length])];
//        self.titleLabel.attributedText = attributeString;
//        
//        attributeString = [[NSMutableAttributedString alloc] initWithString:toDo.description];
//        [attributeString addAttribute:NSStrikethroughStyleAttributeName
//                                value:@2
//                                range:NSMakeRange(0, [attributeString length])];
//        self.descriptionLabel.attributedText = attributeString;
//        
//        attributeString = [[NSMutableAttributedString alloc] initWithString:[toDo.priority stringValue]];
//        [attributeString addAttribute:NSStrikethroughStyleAttributeName
//                                value:@2
//                                range:NSMakeRange(0, [attributeString length])];
//        self.priorityLabel.attributedText = attributeString;
//    }
}


@end
