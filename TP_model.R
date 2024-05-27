# GridFix GLMM R source, generated on 27.05.24, 02:13:05
# 
# Predictor file:	TP_model.csv.gz
# Fixations file:	TP_fixations.tsv
# RegionSet:		<gridfix.GridRegionSet (TP_grid), size=(512, 320), 32x20 grid, 640 cells, memory=102400.0 kB>
# DV type(s):		['fixated']

library(lme4)

gridfixdata  <- read.table("TP_model.csv.gz", header=T, sep="\t", row.names=NULL)

# Define R factors for all chunking variables and group dummy codes
gridfixdata$TRIAL_INDEX <- as.factor(gridfixdata$TRIAL_INDEX)
gridfixdata$image_id <- as.factor(gridfixdata$image_id)

# Center and scale predictors
gridfixdata$fLumin_C <- scale(gridfixdata$fLumin, center=TRUE, scale=TRUE)
gridfixdata$fCentr_C <- scale(gridfixdata$fCentr, center=TRUE, scale=TRUE)
gridfixdata$fSobel_C <- scale(gridfixdata$fSobel, center=TRUE, scale=TRUE)
gridfixdata$fMapFe_C <- scale(gridfixdata$fMapFe, center=TRUE, scale=TRUE)
gridfixdata$fMapFe1_C <- scale(gridfixdata$fMapFe1, center=TRUE, scale=TRUE)

# NOTE: this source code can only serve as a scaffolding for your own analysis!
# You MUST adapt the GLMM model formula below to your model, then uncomment the corresponding line!
# DV: fixated
model.fixated <- glmer(dvFix ~ 1 + fLumin_C  + fCentr_C  + fSobel_C  + fMapFe_C  + fMapFe1_C  + (1 | image_id), data=gridfixdata, family=binomial)

save(file="TP_model.csv_GLMM.Rdata", list = c("model.fixated"))

print(summary(model.fixated))
