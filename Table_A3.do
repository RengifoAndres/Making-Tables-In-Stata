/*====================================================================
project:       MA thesis  
Author:        Andrés Felipe Rengifo
Dependencies:  UNIANDES
----------------------------------------------------------------------
Creation Date:    27 Mar 2022
Modification Date:
Do-file version:    01
References:
Output: Table 4. 
====================================================================*/



/*====================================================================
                         1 SET UP
==================================================================== */

clear all 
macro drop _all
set more off

global root "C:\Users\Andres Felipe\Desktop\Proyectos\Tesis" 

glo dir "${root}/Data/"
glo out "${root}/Output/"
glo tab "${out}/Tables/"
glo logs "${out}/Logs"
/*  Tables */

cd "$dir"


/*====================================================================
    table A3) robustness: Industrial Production and Price Shocks: 
                   Different Specifications
==================================================================== */

*** controls 
global tendencias = "tendandina tencaribe tenpacifica tenorinoquia "
global tendcoca= "tencoca94"
global initial= " pobl_urb1993_*  atac_pob_* incur_p_* hosti_* enfrent_* atq_insta_* secuestro_* terror_* indice_bajopeso_* indice_defuncionesmenores_* justice_percent9599_* coca_ph_* t_nbi_*"

global  advar_geo  " altura_* discapital_* disbogota_* distancia_mercado_* "
global advar_tenprovincias    "ten_prov*"


use mun_indserv, clear
xtset  codmpio ano 
drop if lat1==.
drop if rainfall==.

** dep variables 
replace lpib_industria= lpib_industria-log(retro_pobl_tot)
replace lpib_servicios= lpib_servicios-log(retro_pobl_tot)
gen d_lpib_industria= D.lpib_industria
gen d_lpib_servicios= D.lpib_servicios

***** other cotrols 

gen lbanpr=  log(price_banana)
gen lpalmpr= log(price_palm)
gen ltobacpr= log(price_tobacco)
gen lsugarpr= log(precio_sugar)
gen loilpr= log(price_oil)
gen lcofpr= log(coffe_internalprice_2008)


gen growp_cof=  d.lcofpr
gen growp_oil= d.loilpr


gen shock_ban=  lban_suit* d.lbanpr
gen shock_palm= lpalm_suit* d.lpalmpr
gen shock_tobac =   ltobac_suit*d.ltobacpr
gen shock_sugar=  lsugar_suit*d.lsugarpr
gen shock_coffe=  lcoffe_suit*d.lcofpr 
gen shock_oil=  oilprod88*d.loilpr

**** INSTRUMENT
gen shock_coffe_i= (lcoffe_suit)*d.lTop3_exports



****************************************************

**** DIFERENT SETS OF CONTROLS 
global cont_a= ""
global cont_b=  "${initial}"
global cont_c=  " ${initial} ${tendencias}"
global cont_d=  " ${initial} ${tendencias} ${advar_geo} ${advar_tenprovincias} "

    *****************        Industry       ********************
 
 	quietly sum d_lpib_industria, d
				global  sd_dep=  r(sd)
     
	quietly sum growp_cof , d
				global  sd_cof=  r(sd)
    
    quietly sum growp_oil , d
				global  sd_oil=  r(sd)
			

 ********************************************************************
 
 foreach v in a b c d {
 	
acreg  d_lpib_industria (shock_coffe= shock_coffe_i) shock_oil shock_ban shock_palm shock_tobac shock_sugar  ${cont_`v'},    pfe1(codmpio)  pfe2(ano)   lag(9)  id(codmpio) time(ano) spatial dist(100) longitude(lon1) latitude(lat1)   bartlett dropsingletons

	
	 global `v'1_obs : di e(N)
	  glo   `v'1_Fstat:  di  %5.2f e(widstat)

  
  global `v'1_b:  di %5.4f _b[shock_coffe]
  global `v'2_b:  di %5.4f _b[shock_oil]
  global `v'3_b:  di %5.4f _b[shock_ban]
  global `v'4_b:  di %5.4f _b[shock_palm]
  global `v'5_b:  di %5.4f _b[shock_tobac]
  global `v'6_b:  di %5.4f _b[shock_sugar]

  
  global `v'1_se:  di %5.4f _se[shock_coffe]
  global `v'2_se:  di %5.4f _se[shock_oil]
  global `v'3_se:  di %5.4f _se[shock_ban]
  global `v'4_se:  di %5.4f _se[shock_palm]
  global `v'5_se:  di %5.4f _se[shock_tobac]
  global `v'6_se:  di %5.4f _se[shock_sugar]

  global `v'1_z =  _b[shock_coffe] / _se[shock_coffe]
  global `v'2_z =  _b[shock_oil] / _se[shock_oil]
  global `v'3_z =  _b[shock_ban] / _se[shock_ban]
  global `v'4_z =  _b[shock_palm] / _se[shock_palm]
  global `v'5_z =  _b[shock_tobac] / _se[shock_tobac]
  global `v'6_z =  _b[shock_sugar] / _se[shock_sugar]
  
  
  forval i=1/6 {

	global `v'`i'_pval : di 2* (1-normal(abs(${`v'`i'_z}))) 	
  }
  
forval 	i=1/6 {
	
	glo `v'`i'_estars= "" 					
				if (${`v'`i'_pval}<=0.1) global  `v'`i'_estars = "*"
				if (${`v'`i'_pval}<=0.05) global `v'`i'_estars = "**"
				if (${`v'`i'_pval}<=0.01) global  `v'`i'_estars = "***"	
}						
  
   	            quietly sum  lcoffe_suit, d
				global `v'_eff_coff :  di %5.3f _b[shock_coffe]* r(p50)*${sd_cof}/${sd_dep}
				
				quietly sum  oilprod88 if oilprod88> 0, d
				global `v'_eff_oil :  di %5.3f _b[shock_oil]*r(p50)*${sd_oil}/${sd_dep}
				
								**** numero de municipios. No es la forma más eficiente de hacerlo		 
				global `v'_N_mun= ${`v'1_obs}/9
				global `v'_r2: di %5.3f  e(r2) 


			*** Primera Etapa	
				
				
acreg shock_coffe shock_coffe_i shock_oil shock_ban shock_palm shock_tobac shock_sugar  ${cont_`v'},    pfe1(codmpio)  pfe2(ano)   lag(9)  id(codmpio) time(ano) spatial dist(100) longitude(lon1) latitude(lat1)   bartlett dropsingletons
		
  global p`v'_b:  di %5.4f _b[shock_coffe_i]
  global p`v'_se:  di %5.4f _se[shock_coffe_i]

  global p`v'_z =  _b[shock_coffe_i] / _se[shock_coffe_i]
      
      global p`v'_pval : di 2*(1-normal(abs(${p`v'_z}))) 	
	  glo p`v'_estars= "" 					
				if (${p`v'_pval}<=0.1) global  p`v'_estars = "*"
				if (${p`v'_pval}<=0.05) global p`v'_estars = "**"
				if (${p`v'_pval}<=0.01) global  p`v'_estars = "***"	
				

 }
 
      
 /*====================================================================
                      Creando tabla            
==================================================================== */

texdoc do "${root}\Do files\robust_tabla1.do"

*doedit "${root}\Do files\robust_tabla1.do"

