//
//  JHOSeleccionarDiscapacidadEducacionViewController.m
//  DiscApp
//
//  Created by JHONATAN ACELAS AREVALO on 21/09/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "JHOSeleccionarDiscapacidadEducacionViewController.h"
#import "JHOListadosInstitucionesEducacionViewController.h"

@interface JHOSeleccionarDiscapacidadEducacionViewController ()

@end

@implementation JHOSeleccionarDiscapacidadEducacionViewController
@synthesize selectFisica, disAuditiva,disCongnitiva,disMental,disVisual;

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

- (IBAction)avanzarNombresInstituciones:(id)sender {
    
    JHOListadosInstitucionesEducacionViewController  *cadaConvocatoria = [self.storyboard instantiateViewControllerWithIdentifier:@"ListarEducativas"];
    [self.navigationController pushViewController:cadaConvocatoria animated:YES];
    
    if ([selectFisica isOn]) {
        cadaConvocatoria.fisica=@"on";
    }
    
    if ([disAuditiva isOn]) {
        cadaConvocatoria.auditiva=@"on";
    }
    
    if ([disVisual isOn]) {
        cadaConvocatoria.visual=@"on";
    }
    
    if ([disMental isOn]) {
        cadaConvocatoria.mental=@"on";
    }
    
    if ([disCongnitiva isOn]) {
        cadaConvocatoria.cognitiva=@"on";
    }
    
}
@end
