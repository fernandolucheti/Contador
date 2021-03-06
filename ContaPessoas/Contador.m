//
//  Contador.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contador.h"


@implementation Contador {
    
    int boy;
    int girl;

}

static Contador *_contador = nil;

-(id)init {
    self = [super init];
    if (self) {
        boy = 0;
        girl = 0;
    }
    return self;
}

+(id) getInstance{
    if (_contador == nil){
        _contador = [[Contador alloc] init];
    }
    return _contador;
}

- (void)maisUmCueca {
    boy = boy + 1;
    [_mostrador atualizar];
}
- (void)maisUmaGata {
    girl++;
    [_mostrador atualizar];
}

-(int)getBoys {
    return boy;
}

-(int)getGirls {
    return girl;
}

-(int)getTotal{
    return boy + girl;
}



@end

