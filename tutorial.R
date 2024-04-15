# GridFix GLMM R source, generated on 28.02.24, 13:53:39
# 
# Predictor file:	tutorial.csv.gz
# Fixations file:	tutorial_fixations.csv
# RegionSet:		<gridfix.GridRegionSet (testgrid), size=(800, 600), 8x6 grid, 48 cells, memory=22500.0 kB>
# DV type(s):		['fixated']

library(lme4)

gridfixdata  <- read.table("tutorial.csv.gz", header=T, sep="\t", row.names=NULL)

# Define R factors for all chunking variables and group dummy codes
gridfixdata$subject_number <- as.factor(gridfixdata$subject_number)
gridfixdata$image_id <- as.factor(gridfixdata$image_id)

# Center and scale predictors
gridfixdata$fLumin_C <- scale(gridfixdata$fLumin, center=TRUE, scale=TRUE)
gridfixdata$fCentr_C <- scale(gridfixdata$fCentr, center=TRUE, scale=TRUE)

# NOTE: this source code can only serve as a scaffolding for your own analysis!
# You MUST adapt the GLMM model formula below to your model, then uncomment the corresponding line!
# DV: fixated
#model.fixated <- glmer(dvFix ~ 1 + fLumin_C  + fCentr_C  + (1 | image_id), data=gridfixdata, family=binomial)

save(file="tutorial.csv_GLMM.Rdata", list = c("model.fixated"))

print(summary(model))
