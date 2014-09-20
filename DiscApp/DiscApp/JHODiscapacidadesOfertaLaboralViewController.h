//
//  JHODiscapacidadesOfertaLaboralViewController.h
//  DiscApp
//
//  Created by JHONATAN ACELAS AREVALO on 20/09/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JHODiscapacidadesOfertaLaboralViewController : UIViewController


@property (strong, nonatomic) IBOutlet UISwitch *selectDiscapacidadFisica;

@property (strong, nonatomic) IBOutlet UISwitch *selectDiscapacidadAuditiva;

@property (strong, nonatomic) IBOutlet UISwitch *selectDiscapacidadVisual;

@property (strong, nonatomic) IBOutlet UISwitch *selectDiscapacidadMental;

@property (strong, nonatomic) IBOutlet UISwitch *selectDiscapacidadCognitiva;

- (IBAction)BuscarOfertaLaboral:(id)sender;



@end
