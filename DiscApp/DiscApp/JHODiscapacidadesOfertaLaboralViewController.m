//
//  JHODiscapacidadesOfertaLaboralViewController.m
//  DiscApp
//
//  Created by JHONATAN ACELAS AREVALO on 20/09/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "JHODiscapacidadesOfertaLaboralViewController.h"
#import "JHOListarOfertasLaboralesViewController.h"

@interface JHODiscapacidadesOfertaLaboralViewController ()

@end

@implementation JHODiscapacidadesOfertaLaboralViewController
@synthesize selectDiscapacidadFisica;

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

- (IBAction)BuscarOfertaLaboral:(id)sender {
   // NSLog(@"entro %d",selectDisFisica.selected);
  
    if ([selectDiscapacidadFisica isOn]) {
            NSLog(@"prendido ");
    }else{
        NSLog(@"apagado ");
    }
    
    JHOListarOfertasLaboralesViewController  *cadaConvocatoria = [self.storyboard instantiateViewControllerWithIdentifier:@"ListaOfertasLaborales"];
    [self.navigationController pushViewController:cadaConvocatoria animated:YES];
    
    //NSLog(@"Valores  %d %d %d %d %d ",_selectDiscapacidadFisica.selected,_selectDiscapacidadAuditiva,_selectDiscapacidadVisual,_selectDiscapacidadMental,_selectDiscapacidadCognitiva);
    
}
@end
