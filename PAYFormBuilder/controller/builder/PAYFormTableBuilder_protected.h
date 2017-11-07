//
//  PAYFormTableBuilder.h
//  PAYFormBuilder
//
//  Created by Simon Seyer on 01.11.13.
//  Copyright (c) 2014 Paij. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PAYFormTableBuilder.h"

@interface PAYFormTableBuilder ()

@property (nonatomic, retain, nonnull) PAYFormTable *table;

- (nonnull instancetype)initWithFormTable:(nonnull PAYFormTable *)table;

@end
