//
//  PAYErrorMessage.h
//  PAYFormBuilder
//
//  Created by Simon Seyer on 14.07.14.
//  Copyright (c) 2014 Paij. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PAYValidatableFormCell;

typedef NSString * _Nonnull (^PAYFormErrorMessageBlock)(id _Nonnull formView);

/**
 *  An error message
 */
@interface PAYFormErrorMessage : NSObject

/**
 *  Create an error message with a title and a message
 *
 *  @param title   the title
 *  @param message the message
 *
 *  @return an error message
 */
+ (nonnull instancetype)errorMessageWithTitle:(nonnull NSString *)title
                                      message:(nonnull NSString *)message;

/**
 *  Create an error message with an error object
 *
 *  @param error the error that contains a title and a message
 *
 *  @return an error message
 */
+ (nonnull instancetype)errorMessageWithError:(nonnull NSError *)error;

/**
 *  Create an dynamic error message. The blocks for the title and the message
 *  are called, when the message and the title are accessed. The blocks gets
 *  the FormView that is related to this error message passed, so it could
 *  show context sensitive information.
 *
 *  @param titleBlock   the block that create the title
 *  @param messageBlock the block that create the message
 *
 *  @return an error message
 */
+ (nonnull instancetype)errorMessageWithTitleBlock:(nonnull PAYFormErrorMessageBlock)titleBlock
                                      messageBlock:(nonnull PAYFormErrorMessageBlock)messageBlock;

@end
