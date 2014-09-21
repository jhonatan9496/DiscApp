//
//  JHOTipoDiscapacidadViewController.m
//  DiscApp
//
//  Created by JHONATAN ACELAS AREVALO on 21/09/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "JHOTipoDiscapacidadViewController.h"
#import "JHOViewController.h"

@interface JHOTipoDiscapacidadViewController ()

@end

@implementation JHOTipoDiscapacidadViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
        // Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated{
    
    if (UIAccessibilityIsVoiceOverRunning()) {
        
        UIStoryboard *story= [UIApplication sharedApplication].delegate.window.rootViewController.storyboard;
        JHOViewController *serv =[story instantiateViewControllerWithIdentifier:@"menu"];
        serv.modalTransitionStyle= UIModalTransitionStyleCrossDissolve;
        [self presentViewController:serv animated:YES completion:nil];
        
        
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
