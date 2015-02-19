//
//  FirstViewController.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Fernando Lucheti. All rights reserved.
//


// Testando alterações para commit

#import "FirstViewController.h"
#import "Contador.h"

@interface FirstViewController (){
    Contador* contador;
}

@end

@implementation FirstViewController {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    contador = [Contador getInstance];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickBoy:(id)sender {
    [contador maisUmCueca];
    NSLog(@"Meninos - %i",[contador getBoys]);
}

- (IBAction)clickGirl:(id)sender {
    [contador maisUmaGata];
    NSLog(@"Meninas - %i",[contador getGirls]);
}

@end
