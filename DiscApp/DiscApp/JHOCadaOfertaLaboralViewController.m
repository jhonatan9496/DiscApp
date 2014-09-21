//
//  JHOCadaOfertaLaboralViewController.m
//  DiscApp
//
//  Created by JHONATAN ACELAS AREVALO on 20/09/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "JHOCadaOfertaLaboralViewController.h"

@interface JHOCadaOfertaLaboralViewController ()

@end

@implementation JHOCadaOfertaLaboralViewController

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
    
    [_labelTituloOferta setText:_textTituloOferta];
    [_labelSector setText:_textSector];
    [_labelDescripcion setText:_textDescripcion];
    [_LabelRequisito setText:_textRequisitos];
    [_labelFechaInicio setText:_textFecha];
    [_labelEncargado setText:_textEncargado];
    
    

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

- (IBAction)LlamarEncargadoOfertaLaboral:(id)sender {
    NSString *phoneNumber = [@"tel://" stringByAppendingString:@"3192521991"];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:phoneNumber]];
}
@end
