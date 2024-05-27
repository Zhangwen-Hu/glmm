# glmm

Generalized linear mixed model fit by maximum likelihood (Laplace
  Approximation) [glmerMod]
 Family: binomial  ( logit )
Formula: dvFix ~ 1 + fLumin_C + fCentr_C + fSobel_C + fMapFe_C + fMapFe1_C +  
    (1 | image_id)
   Data: gridfixdata

     AIC      BIC   logLik deviance df.resid 
 22394.9  22466.6 -11190.4  22380.9   208633 

Scaled residuals: 
    Min      1Q  Median      3Q     Max 
-0.6048 -0.1092 -0.0692 -0.0495 31.1044 

Random effects:
 Groups   Name        Variance Std.Dev.
 image_id (Intercept) 0.2062   0.4541  
Number of obs: 208640, groups:  image_id, 33

Fixed effects:
            Estimate Std. Error z value Pr(>|z|)    
(Intercept) -5.14410    0.08538 -60.249  < 2e-16 ***
fLumin_C     0.02532    0.02840   0.891    0.373    
fCentr_C    -0.60049    0.02144 -28.003  < 2e-16 ***
fSobel_C     0.22219    0.01697  13.095  < 2e-16 ***
fMapFe_C     0.09938    0.01581   6.287 3.23e-10 ***
fMapFe1_C    0.59489    0.02094  28.404  < 2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Correlation of Fixed Effects:
          (Intr) fLmn_C fCnt_C fSbl_C fMpF_C
fLumin_C  -0.038                            
fCentr_C   0.165  0.125                     
fSobel_C  -0.052 -0.065  0.036              
fMapFe_C  -0.035 -0.005 -0.026  0.033       
fMapFe1_C -0.136  0.030  0.292 -0.090 -0.048

Generalized linear mixed model fit by maximum likelihood (Laplace
  Approximation) [glmerMod]
 Family: binomial  ( logit )
Formula: dvFix ~ 1 + fLumin_C + fCentr_C + fSobel_C + fMapFe_C + fMapFe1_C +  
    (1 | image_id)
   Data: gridfixdata

     AIC      BIC   logLik deviance df.resid 
 17639.2  17710.9  -8812.6  17625.2   208633 

Scaled residuals: 
   Min     1Q Median     3Q    Max 
-1.969 -0.086 -0.057 -0.045 32.888 

Random effects:
 Groups   Name        Variance Std.Dev.
 image_id (Intercept) 0.3456   0.5879  
Number of obs: 208640, groups:  image_id, 33

Fixed effects:
            Estimate Std. Error z value Pr(>|z|)    
(Intercept) -5.49178    0.10888 -50.439  < 2e-16 ***
fLumin_C     0.01768    0.03026   0.584    0.559    
fCentr_C    -0.47672    0.02377 -20.054  < 2e-16 ***
fSobel_C     0.26134    0.01818  14.378  < 2e-16 ***
fMapFe_C     0.09200    0.01509   6.098 1.08e-09 ***
fMapFe1_C    0.68936    0.01206  57.155  < 2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Correlation of Fixed Effects:
          (Intr) fLmn_C fCnt_C fSbl_C fMpF_C
fLumin_C  -0.024                            
fCentr_C   0.154  0.158                     
fSobel_C  -0.060 -0.190  0.102              
fMapFe_C  -0.024 -0.135 -0.007  0.082       
fMapFe1_C -0.159  0.139  0.071 -0.093 -0.181
