//
//  JHOListadosInstitucionesEducacionViewController.m
//  DiscApp
//
//  Created by JHONATAN ACELAS AREVALO on 21/09/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "JHOListadosInstitucionesEducacionViewController.h"
#import "JHOCadaInstitucionEducativaViewController.h" 

@interface JHOListadosInstitucionesEducacionViewController ()

@end

@implementation JHOListadosInstitucionesEducacionViewController{
    NSMutableArray *ofertasLaborales;
}

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
    
    ofertasLaborales = [[NSMutableArray alloc]init];
    
    if ([_fisica isEqualToString:@"on"]) {
        
        for (int i=0; i<3; i++) {
            NSMutableDictionary *informacionOfertasLaborales = [[NSMutableDictionary alloc] init];;
            
            [informacionOfertasLaborales  setValue:@"Informacion Oferta educativa fisica" forKey:@"nombre"];
            [informacionOfertasLaborales setValue:@"Descripcion Oferta educativa" forKey:@"descripcion"];
            [informacionOfertasLaborales setValue:@"fisica" forKey:@"discapacidad"];
            [ofertasLaborales addObject:informacionOfertasLaborales];
        }
    }
    
    if ([_visual isEqualToString:@"on"]) {
        
        for (int i=0; i<3; i++) {
            NSMutableDictionary *informacionOfertasLaborales = [[NSMutableDictionary alloc] init];;
            
            [informacionOfertasLaborales  setValue:@"Informacion Oferta educativa visual" forKey:@"nombre"];
            [informacionOfertasLaborales setValue:@"Descripcion Oferta educativa" forKey:@"descripcion"];
            [informacionOfertasLaborales setValue:@"visual" forKey:@"discapacidad"];
            [ofertasLaborales addObject:informacionOfertasLaborales];
        }
        
    }
    
    if ([_auditiva isEqualToString:@"on"]) {
        
        for (int i=0; i<3; i++) {
            NSMutableDictionary *informacionOfertasLaborales = [[NSMutableDictionary alloc] init];;
            
            [informacionOfertasLaborales  setValue:@"Informacion Oferta educativa Auditiva" forKey:@"nombre"];
            [informacionOfertasLaborales setValue:@"Descripcion Oferta educativa" forKey:@"descripcion"];
            [informacionOfertasLaborales setValue:@"auditiva" forKey:@"discapacidad"];
            [ofertasLaborales addObject:informacionOfertasLaborales];
        }
    }
    
    if ([_mental isEqualToString:@"on"]) {
        
        for (int i=0; i<3; i++) {
            NSMutableDictionary *informacionOfertasLaborales = [[NSMutableDictionary alloc] init];;
            
            [informacionOfertasLaborales  setValue:@"Informacion Oferta educativa mental" forKey:@"nombre"];
            [informacionOfertasLaborales setValue:@"Descripcion Oferta educativa" forKey:@"descripcion"];
            [informacionOfertasLaborales setValue:@"mental" forKey:@"discapacidad"];
            [ofertasLaborales addObject:informacionOfertasLaborales];
        }
        
    }
    
    if ([_cognitiva isEqualToString:@"on"]) {
        
        for (int i=0; i<3; i++) {
            NSMutableDictionary *informacionOfertasLaborales = [[NSMutableDictionary alloc] init];;
            
            [informacionOfertasLaborales  setValue:@"Informacion Oferta educativa cognitiva" forKey:@"nombre"];
            [informacionOfertasLaborales setValue:@"Descripcion Oferta educativa" forKey:@"descripcion"];
            [informacionOfertasLaborales setValue:@"cognitiva" forKey:@"discapacidad"];
            [ofertasLaborales addObject:informacionOfertasLaborales];
        }
    }
    
    
    
    [self.tableView reloadData];

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




//------------------------------------------------------------------
//-----------------Numero de secciones en la table -----------------
//------------------------------------------------------------------
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}
//------------------------------------------------------------------
//-----------------Numero de celdas    en la table -----------------
//------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [ofertasLaborales count];
}

//------------------------------------------------------------------
//-----------------Crea cada celda y le asigna un contenido --------
//------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *Celidentifield=@"Cell";
    // extraemos la posicion del arreglo segun la posicion del numero de la celda
    NSDictionary *dic = [ofertasLaborales objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Celidentifield];
    
    if (cell==nil) {
        //  cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Celidentifield];
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:Celidentifield];
        
    }
    
    cell.textLabel.text = [dic objectForKey:@"nombre"];
    cell.textLabel.accessibilityHint =[dic objectForKey:@"nombre"];
    cell.textLabel.accessibilityLabel =[dic objectForKey:@"nombre"];
    //[cell.textLabel.accessibilityActivate YES ];
    cell.detailTextLabel.text = [dic objectForKey:@"descripcion"];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    // Configure the cell...
    
    return cell;
}
//------------------------------------------------------------------
//-----------------Numero de pixeles de las celdas -----------------
//------------------------------------------------------------------
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}
//------------------------------------------------------------------
//-----------------Evento al hacer click en cada celda--------------
//------------------------------------------------------------------
-(void) tableView: (UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSDictionary *datosBusqueda =[ofertasLaborales objectAtIndex:indexPath.row];
    
    
    JHOCadaInstitucionEducativaViewController  *cadaConvocatoria = [self.storyboard instantiateViewControllerWithIdentifier:@"CadaInstitucionEducativa"];
    [self.navigationController pushViewController:cadaConvocatoria animated:YES];
    cadaConvocatoria.textTituloInstitucion =@"esto es una prueba del titulo textTituloOferta";
    cadaConvocatoria.textRequisitos =@"esto es una prueba del titulo textSector";
    cadaConvocatoria.textFechaMatricula =@"15 de Agosto 2014";
  //  cadaConvocatoria.textRequisitos =@"esto es una prueba del titulo textRequisitos";
   // cadaConvocatoria.textFecha =@"esto es una prueba del titulo textFecha";
  //  cadaConvocatoria.textEncargado =@"esto es una prueba del titulo textEncargado";
    
    //     cadaConvocatoria.textTituloConvocatoria =[datosBusqueda objectForKey:@"nombre"];
    //     cadaConvocatoria.textDeescripcionConvocatoria = [datosBusqueda objectForKey:@"descripcion"];
    //     cadaConvocatoria.textLinkConvocatoria = [datosBusqueda objectForKey:@"link"];
}


@end
