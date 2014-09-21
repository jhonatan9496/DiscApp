//
//  JHOCadaInstitucionEducativaViewController.m
//  DiscApp
//
//  Created by JHONATAN ACELAS AREVALO on 21/09/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "JHOCadaInstitucionEducativaViewController.h"

@interface JHOCadaInstitucionEducativaViewController ()

@end

@implementation JHOCadaInstitucionEducativaViewController

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
    
    [_labelNombreInstitucion setText:_textTituloInstitucion];
    [_labelRequistos setText:_textRequisitos];
    [_labelFecha setText:_textFechaMatricula];

    // Do any additional setup after loading the view.
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
