//
//  DetailViewController.m
//  EveryDo2
//
//  Created by swcl on 2017-07-11.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "DetailViewController.h"
#import "ToDo.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextView *toDoDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;
@property (weak, nonatomic) IBOutlet UILabel *completedLabel;

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}


- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.toDoDescriptionLabel.text = [self.detailItem toDoDescriptions];
        self.titleLabel.text = [self.detailItem title];
        self.priorityLabel.text = [NSString stringWithFormat:@"%@", self.detailItem.priority];
        if(self.detailItem.completed){
            self.completedLabel.text = @"YES";
        }else{
            self.completedLabel.text = @"NO";
        }
        
        

    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
