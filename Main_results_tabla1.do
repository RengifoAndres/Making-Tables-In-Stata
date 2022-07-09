global root "C:\Users\Andres Felipe\Desktop\Proyectos\Tesis"

glo dir "${root}/Data/"
glo out "${root}/Output/"
glo tab "${out}/Tables/"
/*  Tables */

cd "$tab"

texdoc init main_t1.tex, replace 

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
tex  \caption{Effect of Commodity Price Shocks on Industrial Production}
tex \scalebox{0.7}{
tex  \begin{tabular}{lccccc} \hline
tex  & \multicolumn{2}{c}{Model 1}  & & \multicolumn{2}{c}{Model 2} \\ \cline{2-3} \cline{5-6}
tex  & MCO & IV & & MCO & IV \\ 
tex  & (1) & (2) & & (3) & (4) \\ \hline \hline
tex \multicolumn{6}{l}{\textbf{\textit{Panel A. OLS y IV}}} \\
tex \multicolumn{6}{l}{dep Var: Growth rate Industrial GDP Per Capita} \\
tex  \small $ log(\text{Coffe Suit})$ $ \small \times \Delta   log(\text{Coffee Price})$  & $ ${a1_b}^{${a1_estars}} $ & $ ${b1_b}^{${b1_estars}} $ & &  $ ${c1_b}^{${c1_estars}} $ &  $ ${d1_b}^{${d1_estars}} $   \\
tex  & (${a1_se}) & (${b1_se}) & &  (${c1_se})  &  (${d1_se})\\
tex \small $ log(\text{Oil Prod)}$ $ \small \times  \Delta   log(\text{Oil Price})$ & $ ${a2_b}^{${a2_estars}} $ & $ ${b2_b}^{${b2_estars}} $ & &  $ ${c2_b}^{${c2_estars}} $ &  $ ${d2_b}^{${d2_estars}} $ \\
tex  & (${a2_se}) & (${b2_se}) & &  (${c2_se})  &  (${d2_se})\\
tex  \small $ log(\text{Banana Suit})$ $ \small \times   \Delta log(\text{Price Banana})$ &  &   & &  $ ${c3_b}^{${c3_estars}} $ &  $ ${d3_b}^{${d3_estars}} $   \\
tex    &     &   & &  (${c3_se})  & (${d3_se})  \\ 	   
tex  \small $ log(\text{Palm Suit})$ $ \small \times  \Delta log(\text{Price Palm})$ &  &   & &  $ ${c4_b}^{${c4_estars}} $ &  $ ${d4_b}^{${d4_estars}} $   \\	
tex    &     &  & &  (${c4_se})   & (${d4_se})  \\    
tex  \small $ log(\text{Tobacco Suit})$ $ \small \times \Delta log(\text{Price Tobacco})$ &  &   & & $  ${c5_b}^{${c5_estars}} $ &  $ ${d5_b}^{${d5_estars}} $   \\	
tex    &     &   & &  (${c5_se})  & (${d5_se})  \\    
tex  \small $ log(\text{Sugar Suit})$ $ \small \times   \Delta   log(\text{Price Sugar})$  &  &   & & $  ${c6_b}^{${c5_estars}} $ &  $ ${d6_b}^{${d5_estars}} $   \\	
tex    &    &   & &  (${c6_se})   & (${d6_se})  \\
tex  &  &  & & &  \\
tex Coffee Effect & ${a_eff_coff} & ${b_eff_coff} & & ${c_eff_coff} &  ${d_eff_coff} \\ 
tex  Oil Effect & ${a_eff_oil} & ${b_eff_oil} & & ${c_eff_oil} & ${d_eff_oil} \\
tex  &  &  & & &  \\ \hline
tex F-Stat  &  & ${b1_Fstat}  & & &  ${d1_Fstat} \\
tex  &  &  & & &  \\ \hline
tex & \multicolumn{2}{c}{Model 1}  & & \multicolumn{2}{c}{Model 2} \\ \hline
tex \multicolumn{6}{l}{\textbf{\textit{Panel B. First stage}}}  \\
tex \multicolumn{6}{l}{dep Var: \small $ log(\text{Coffe Suit})$ $ \small \times \Delta  log(\text{Coffee Price})$} \\ 
tex &  &  & & &  \\
tex  \small $  log(\text{Coffe Suit})$ $ \small \times  \Delta   log(\text{Export: Top 3})$  &   \multicolumn{2}{c}{ $ ${e1_b}^{${e1_estars}} $}  & & \multicolumn{2}{c}{  $ ${f1_b}^{${f1_estars}} $} \\
tex                                                                                     &   \multicolumn{2}{c}{(${e1_se})}  & & \multicolumn{2}{c}{ (${f1_se})} \\
tex \small $ log(\text{Oil Prod)}$ $ \small \times  \Delta  log(\text{Price Oil})$ &   \multicolumn{2}{c}{ $ ${e2_b}^{${e2_estars}} $}  & & \multicolumn{2}{c}{ $ ${f2_b}^{${f2_estars}} $} \\
tex                                                                       &   \multicolumn{2}{c}{(${e2_se})}  & & \multicolumn{2}{c}{(${f2_se}) } \\
tex  \small $ log(\text{Banana Suit})$ $ \small \times  \Delta  log(\text{Price Banana})$ &  \multicolumn{2}{c}{}  & & \multicolumn{2}{c}{$ ${f3_b}^{${f3_estars}} $ } \\
tex                                                                              &   \multicolumn{2}{c}{}  & & \multicolumn{2}{c}{(${f3_se})} \\
tex  \small $ log(\text{Palm Suit})$ $ \small \times  \Delta   log(\text{Price Palm})$ tex &   \multicolumn{2}{c}{}  & & \multicolumn{2}{c}{$ ${f4_b}^{${f4_estars}} $} \\
tex                                                                              &   \multicolumn{2}{c}{}  & & \multicolumn{2}{c}{ (${f4_se})} \\
tex  \small $ log(\text{Tobacco Suit})$ $ \small \times   \Delta  log(\text{Price Tobacco})$ & \multicolumn{2}{c}{}  & & \multicolumn{2}{c}{$ ${f5_b}^{${f5_estars}} $} \\
tex                                                                                &   \multicolumn{2}{c}{}  & & \multicolumn{2}{c}{(${f5_se}) } \\ 
tex  \small $ log(\text{Sugar Suit})$ $ \small \times  \Delta   log(\text{Price Sugar})$  &  \multicolumn{2}{c}{}  & & \multicolumn{2}{c}{$ ${f6_b}^{${f6_estars}} $} \\
 tex                                                                            &   \multicolumn{2}{c}{}  & & \multicolumn{2}{c}{ (${f6_se})} \\
 tex  &  &  & & &  \\ \hline
tex Obs &  \multicolumn{2}{c}{${b1_obs}}   & &   \multicolumn{2}{c}{${d1_obs}}   \\
tex  Municipal and Year FE & \multicolumn{2}{c}{$\checkmark$} & &\multicolumn{2}{c}{$\checkmark$} \\
tex Region Trends & \multicolumn{2}{c}{$\checkmark$} & &\multicolumn{2}{c}{$\checkmark$} \\
tex Baseline Controls & \multicolumn{2}{c}{$\checkmark$} & &\multicolumn{2}{c}{$\checkmark$} \\ 
tex Geographic Controls & \multicolumn{2}{c}{$\checkmark$} & &\multicolumn{2}{c}{$\checkmark$} \\ \hline
tex \end{tabular} }
tex \scriptsize{\parbox[l]{13cm}{\textbf{  Notes: Results from estimating the equation \eqref{eq:main_est1} via MCO and 2SLS from a balanced panel. The unit of observation is the municipality-year and the sample covers the same municipalities that \cite{duvevargas} in the period 2000-2009. Standard errors adjusted for spatial correlation (100 km) and temporal correlation in parentheses. The baseline controls refer to the predetermined variables interacted with the full set of year dummies. Region Trends refer to differential trends by region. Geographic controls refer to geographic variables multiplied by time dummies. F-Stat is the Kleibergen-Paap F statistic. *** p$<$0.01, ** p$<$0.05, * p$<$0.1}}}
tex     \label{tab:ind}
tex \end{table}
tex  \end{document}









