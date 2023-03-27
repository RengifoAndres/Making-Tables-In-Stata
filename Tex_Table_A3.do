global root "C:\Users\Andres Felipe\Desktop\Proyectos\Tesis"

glo dir "${root}/Data/"
glo out "${root}/Output/"
glo tab "${out}/Tables/"
/*  Tables */

cd "$tab"

texdoc init Table_A3.tex, replace 

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
tex  \caption{Industrial Production and Price Shocks: Different Specifications}
tex \scalebox{0.8}{
tex  \begin{tabular}{lccccc} \hline
tex  & IV & IV & & IV & IV \\ 
tex  & (1) & (2) & & (3) & (4) \\ \hline \hline
tex \multicolumn{6}{l}{\textbf{\textit{Panel A. Second Stage}}} \\
tex \multicolumn{6}{l}{dep Var:} \\
tex  \small $ log(\text{Coffe Suit})$ $ \small \times \Delta   log(\text{Coffee Price})$  & $ ${a1_b}^{${a1_estars}} $ & $ ${b1_b}^{${b1_estars}} $ & &  $ ${c1_b}^{${c1_estars}} $ &  $ ${d1_b}^{${d1_estars}} $   \\
tex  & (${a1_se}) & (${b1_se}) & &  (${c1_se})  &  (${d1_se})\\
tex \small $ log(\text{Oil Prod)}$ $ \small \times  \Delta   log(\text{Oil Price})$ & $ ${a2_b}^{${a2_estars}} $ & $ ${b2_b}^{${b2_estars}} $ & &  $ ${c2_b}^{${c2_estars}} $ &  $ ${d2_b}^{${d2_estars}} $ \\
tex  & (${a2_se}) & (${b2_se}) & &  (${c2_se})  &  (${d2_se})\\
tex  \small $ log(\text{Banana Suit})$ $ \small \times   \Delta log(\text{Banana Price})$ & $ ${a3_b}^{${a3_estars}} $ & $ ${b3_b}^{${b3_estars}} $ & &  $ ${c3_b}^{${c3_estars}} $ &  $ ${d3_b}^{${d3_estars}} $   \\
tex  & (${a3_se}) & (${b3_se}) & &  (${c3_se})  &  (${d3_se})\\
tex  \small $ log(\text{Palm Suit})$ $ \small \times  \Delta log(\text{Palm Price})$  & $ ${a4_b}^{${a4_estars}} $ & $ ${b4_b}^{${b4_estars}} $ & &  $ ${c4_b}^{${c4_estars}} $ &  $ ${d4_b}^{${d4_estars}} $   \\
tex  & (${a4_se}) & (${b4_se}) & &  (${c4_se})  &  (${d4_se})\\
tex  \small $ log(\text{Tobacco Suit})$ $ \small \times \Delta log(\text{Tobacco Price})$  & $ ${a5_b}^{${a5_estars}} $ & $ ${b5_b}^{${b5_estars}} $ & &  $ ${c5_b}^{${c5_estars}} $ &  $ ${d5_b}^{${d5_estars}} $   \\
tex  & (${a5_se}) & (${b5_se}) & &  (${c5_se})  &  (${d5_se})\\
tex  \small $ log(\text{Sugar Suit})$ $ \small \times   \Delta   log(\text{Sugar Price})$  & $ ${a6_b}^{${a6_estars}} $ & $ ${b6_b}^{${b6_estars}} $ & &  $ ${c6_b}^{${c6_estars}} $ &  $ ${d6_b}^{${d6_estars}} $   \\
tex  & (${a6_se}) & (${b6_se}) & &  (${c6_se})  &  (${d6_se})\\
tex &  &  & & &  \\
tex Coffee Effect & ${a_eff_coff} & ${b_eff_coff} & & ${c_eff_coff} &  ${d_eff_coff} \\ 
tex  Oil Effect  & ${a_eff_oil} & ${b_eff_oil} & & ${c_eff_oil} & ${d_eff_oil} \\
tex  &  &  & & &  \\ \hline
tex F-Stat  & ${a1_Fstat} & ${b1_Fstat}  & & ${c1_Fstat} &  ${d1_Fstat} \\
tex R$^{2}$  & ${a_r2}  & ${b_r2}  & & ${c_r2} &  ${d_r2} \\ \hline
tex \multicolumn{6}{l}{\textbf{\textit{Panel B. First stage}}}  \\
tex \multicolumn{6}{l}{dep. Var: \small $ log(\text{Coffee Suit})$ $ \small \times \Delta  log(\text{Coffee Price})$} \\ 
tex  \small $  log(\text{Coffe Suit})$ $ \small \times  \Delta   log(\text{Export: Top 3})$  &  $ ${pa_b}^{${pa_estars}} $ & $ ${pb_b}^{${pb_estars}} $ & &  $ ${pc_b}^{${pc_estars} }$  &  $ ${pd_b}^{${pd_estars}} $ \\                                                                                   
 tex   &  (${pa_se}) & (${pb_se})  & & (${pc_se}) &  (${pd_se}) \\ 
 tex  &  &  & & &  \\ \hline
tex Obs  & ${a1_obs} & ${b1_obs} & & ${c1_obs} & ${d1_obs}  \\ 
tex N Mun & ${a_N_mun}  &  ${b_N_mun} & & ${c_N_mun}  &  ${d_N_mun}   \\
tex  Municipal and Year FE & $\checkmark$ & $\checkmark$ & & $\checkmark$ & $\checkmark$  \\ 
tex Region Trends & $\text{\xmark}$ & $\checkmark$ &   & $\checkmark$ &   $\checkmark$ \\ 
tex Baseline Controls & $\text{\xmark}$ & $\text{\xmark}$  & & $\checkmark$ &   $\checkmark$ \\ 
tex Geographic Controls  & $\text{\xmark}$ & $\text{\xmark}$ & & $\text{\xmark}$ &   $\checkmark$ \\  \hline
tex \end{tabular} }
tex \scriptsize{\parbox[l]{13cm}{\textbf{Notes:} Results from estimating the equation \eqref{eq:main_est1} via 2SLS from a balanced panel. The unit of observation is the municipality-year and the sample leaves out the largest municipal units (some department capitals) as in \citeauthor{duvevargas} (2013). The period is 2000-2009. The number of municipalities is given in the row N mun. Standard errors adjusted for spatial correlation (100 km) and temporal correlation in parentheses. The baseline controls refer to the predetermined variables interacted with the full set of year dummies. Region Trends refer to differential trends by region. Geographic controls refer to geographic variables multiplied by time dummies.  F-Stat is the Kleibergen-Paap F statistic. *** p$<$0.01, ** p$<$0.05, * p$<$0.1}}
tex     \label{tab:robust1}
tex \end{table}
tex  \end{document}


