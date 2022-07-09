global root "C:\Users\Andres Felipe\Desktop\Proyectos\Tesis"

glo dir "${root}/Data/"
glo out "${root}/Output/"
glo tab "${out}/Tables/"
/*  Tables */

cd "$tab"

texdoc init main_t2.tex, replace 

tex  \documentclass[11pt]{article}
tex  \usepackage[utf8]{inputenc}
 tex  \usepackage{graphicx} % Allows including images
 tex  \usepackage{booktabs} % Allows the use of tex  \toprule, tex  \midrule and tex  \bottomrule in tables
  tex  \usepackage{rotating}
 tex  \usepackage{hyperref} 
 tex  \usepackage{amsmath}
 tex  \usepackage[english,spanish,es-tabla,]{babel}
 tex  \usepackage{tablefootnote}
 tex  \usepackage{amssymb} 
 tex  \usepackage{anysize}
 tex  \usepackage{subfigure} % subfiguras
tex  \marginsize{2.54cm}{2.54cm}{2.54cm}{2.54cm}
tex  \usepackage{apacite} %% citar en apa
tex  \usepackage[toc,page]{appendix}
tex  \usepackage{amsmath}   %%% si necesito interlineado 
tex  \usepackage{setspace}  % interlineado movil
tex  \usepackage{float} % PARA ANCLAR FIGURAS
tex  \begin{document}
tex  \begin{table}[H]
tex  \centering
tex  \caption{Efecto de los Choques de Precio sobre la Producción Servicios}
tex \scalebox{0.8}{
tex  \begin{tabular}{lccccc} \hline
tex  & \multicolumn{2}{c}{Modelo 1}  & & \multicolumn{2}{c}{Modelo 2} \\ \cline{2-3} \cline{5-6}
tex  & MCO & IV & & MCO & IV \\ 
tex  & (1) & (2) & & (3) & (4) \\ \hline \hline
tex \multicolumn{6}{l}{\textbf{\textit{Panel A. MCO y IV}}} \\
tex \multicolumn{6}{l}{Variable dependiente: Tasa de crecimiento PIB Servicios Per Cápita} \\
tex  \small $ log(\text{Coffe Sut})$ $ \small \times  \Delta   log(\text{Precio Interno})$  & $ ${a1_b}^{${a1_estars}} $ & $ ${b1_b}^{${b1_estars}} $ & &  $ ${c1_b}^{${c1_estars}} $ &  $ ${d1_b}^{${d1_estars}} $   \\
tex  & (${a1_se}) & (${b1_se}) & &  (${c1_se})  &  (${d1_se})\\
tex \small $ log(\text{Oil Prod)}$ $ \small \times  \Delta   log(\text{Precio Oil})$ & $ ${a2_b}^{${a2_estars}} $ & $ ${b2_b}^{${b2_estars}} $ & &  $ ${c2_b}^{${c2_estars}} $ &  $ ${d2_b}^{${d2_estars}} $ \\
tex  & (${a2_se}) & (${b2_se}) & &  (${c2_se})  &  (${d2_se})\\
tex  \small $ log(\text{Banana Sut})$ $ \small \times  \Delta  log(\text{Precio Banana})$ &  &   & & $  ${c3_b}^{${c3_estars}} $ &  $ ${d3_b}^{${d3_estars}} $   \\
tex    &     &   & &  (${c3_se})  & (${d3_se})  \\ 	   
tex  \small $ log(\text{Palm Sut})$ $ \small \times  \Delta   log(\text{Precio Palm})$ &  &   & & $  ${c4_b}^{${c4_estars}} $ &  $ ${d4_b}^{${d4_estars}} $   \\	
tex    &     &  & &  (${c4_se})   & (${d4_se})  \\    
tex  \small $ log(\text{Tobacco Sut})$ $ \small \times \Delta  log(\text{Precio Tobacco})$ &  &   & & $  ${c5_b}^{${c5_estars}} $ &  $ ${d5_b}^{${d5_estars}} $   \\	
tex    &     &   & &  (${c5_se})  & (${d5_se})  \\    
tex  \small $ log(\text{Sugar Sut})$ $ \small \times  \Delta  log(\text{Precio Sugar})$  &  &   & &  $  ${c6_b}^{${c5_estars}} $ &  $ ${d6_b}^{${d5_estars}} $   \\	
tex    &    &   & &  (${c6_se})   & (${d6_se})  \\
tex  &  &  & & &  \\
tex Efecto Café & ${a_eff_coff} & ${b_eff_coff} & & ${c_eff_coff} &  ${d_eff_coff} \\ 
tex  Efecto Petróleo & ${a_eff_oil} & ${b_eff_oil} & & ${c_eff_oil} & ${d_eff_oil} \\
tex  &  &  & & &  \\ \hline
tex F-Stat Inst. Excuidos &  & ${b1_Fstat}  & & &  ${d1_Fstat} \\
tex  &  &  & & &  \\ \hline
tex Observaciones &  \multicolumn{2}{c}{${b1_obs}}   & &   \multicolumn{2}{c}{${d1_obs}}   \\
tex EF de Municipio y Ano & \multicolumn{2}{c}{Si} & &\multicolumn{2}{c}{Si} \\
tex Tendencias de Region & \multicolumn{2}{c}{Si} & &\multicolumn{2}{c}{Si} \\
tex Controles Iniciales & \multicolumn{2}{c}{Si} & &\multicolumn{2}{c}{Si} \\ 
tex Controles Geográficos & \multicolumn{2}{c}{Si} & &\multicolumn{2}{c}{Si} \\ \hline
tex \end{tabular} }
tex \scriptsize{\parbox[l]{13cm}{\textbf{ Notas:  Errores estándar ajustados por  correlación espacial (100 km) y correlación temporal  en paréntesis. Los controles iniciales hacen referencia a las variables predeterminadas interactuadas con todo el conjunto de dummies temporales. Tendencias de Región hace referencia a tendencias diferenciales por región. Controles geográficos se refieren a variables geográficas multiplicadas por dummies temporales.  F-Stat  es el estadístico F Kleibergen-Paap. *** p$<$0.01, ** p$<$0.05, * p$<$0.1}}}
tex     \label{tab:serv}
tex \end{table}
tex  \end{document}

