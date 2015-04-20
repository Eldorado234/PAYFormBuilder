//
//  PAYCustomizationViewController.m
//  Example
//
//  Created by Simon Seyer on 25.04.14.
//  Copyright (c) 2014 Paij. All rights reserved.
//

#import "PAYCustomizationViewController.h"

@interface PAYCustomizationViewController ()

@end

@implementation PAYCustomizationViewController

- (void)loadStructure:(PAYFormTableBuilder *)tableBuilder {
    [tableBuilder addSectionWithName:@"Buttons"
                        contentBlock:^(PAYFormSectionBuilder * sectionBuilder) {
                            [sectionBuilder addButtonWithText:nil
                                                        style:PAYFormButtonStyleEmpty
                                               selectionBlock:nil
                                               configureBlock:^(PAYFormButton *formButton) {
                                                   CGRect frame = CGRectInset(formButton.view.frame, 40, 0);
                                                   
                                                   UILabel *label1 = [[UILabel alloc]initWithFrame:frame];
                                                   label1.text = @"Custom button";
                                                   label1.textColor = [UIColor colorFromHex:0xB8E62E];
                                                   [formButton.view addSubview:label1];
                                                   
                                                   UILabel *label2 = [[UILabel alloc]initWithFrame:frame];
                                                   label2.text = @"empty style";
                                                   label2.textColor = [UIColor colorFromHex:0xFF6600];
                                                   label2.textAlignment = NSTextAlignmentRight;
                                                   [formButton.view addSubview:label2];
                                               }];
                        }];
    [tableBuilder addSectionWithName:@"For all row types you could add in the section builder, there is at least one method which exepts a configureBlock. In this block different holder objects are passed, which contains the cell, elements of the row and often some usefull configuration options. All parameters of a row could be changed this way."
                          labelStyle:PAYFormTableLabelStyleDescriptionWide
                        contentBlock:^(PAYFormSectionBuilder * sectionBuilder) {
        [sectionBuilder addFieldWithName:@"Custom"
                        placeholder:@"field with background"
                        configureBlock:^(PAYFormSingleLineTextField *formField) {
                            formField.textField.backgroundColor = [UIColor colorFromHex:0x71C1E9];
                        }];
    }];
    
    [tableBuilder addSectionWithName:@"Customized section header"
                          labelStyle:PAYFormTableLabelStyleDescription
                         headerBlock:^(PAYFormHeader *formHeader) {
                             formHeader.label.textColor = [UIColor colorFromHex:0x0357AB];
                         } contentBlock:^(PAYFormSectionBuilder * sectionBuilder) {
        [sectionBuilder addButtonWithText:@"Section header with blue text"
                                    style:PAYFormButtonStyleDefault
                           selectionBlock:nil];
    }];
    
    [tableBuilder addSectionWithName:@"To change the default styles, use the theming API described in the README file."
                          labelStyle:PAYFormTableLabelStyleDescriptionWide
                        contentBlock:nil];
    
    PAYTextLabel *tableHeaderLabel = [[PAYTextLabel alloc]initWithFrame:self.view.frame];
    tableHeaderLabel.style = PAYFormTableLabelStyleDescriptionWide;
    tableHeaderLabel.text = @"You could still use the table view header and footer view as normal. You could use the PAYTextLabel to easily apply a default style. You have to call sizeToFit manually after you set all parameters.";
    
    UIView *headerView = [UIView new];
    headerView.frame = CGRectMake(0, 0, self.view.frame.size.width, CGRectGetMaxY(tableHeaderLabel.frame));
    [headerView addSubview:tableHeaderLabel];
    self.tableView.tableHeaderView = headerView;
}

@end
