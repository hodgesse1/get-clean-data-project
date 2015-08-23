run_analysis <- function(file1,file2,subj1,subj2,act1,act2,feat1,
	     	actlab1,out1) {
	     # file1 is the name (including the location) of the training
	     # data set, while file2 is the name of the test set
	     # subj1 is the name/location of the training subject data
	     # subj2 is the name/location of the test subject data
	     # act1 is the name/location of the training activity data
	     # act2 is the name/location of the test activty data
	     # feat1 is the name/location of the feature data
	     # actlab1 is the name/location of the act. label data
	     # out1 is the output file to write the final txt file
	     
	     # Bring in Initial Training Files

	     tr1 <- read.table(file1,header=FALSE)
	     su1 <- scan(subj1,quiet=TRUE)
	     ac1 <- scan(act1,quiet=TRUE)

	     
	     # Bring in Initial Test Files
	     tr2 <- read.table(file2,header=FALSE)
	     su2 <- scan(subj2,quiet=TRUE)
	     ac2 <- scan(act2,quiet=TRUE)


	     # Merge into 1 Big File 
	     tr3a <- rbind(tr1,tr2)
	     su3a <- c(su1,su2)
	     ac3a <- c(ac1,ac2)
	     



	     # Fix up Features
	     ft1 <- read.table(feat1,header=FALSE)
	     mn1 <- grepl("mean()",ft1$V2,fixed=TRUE)
	     sd1 <- grepl("std()",ft1$V2,fixed=TRUE)
	     col1 <- sort(union(which(mn1),which(sd1)))
	     n1 <- length(col1)

	     # Fix up Activity Labels
	     atlab1 <- read.table(actlab1,header=FALSE)

	     # Break Down Big Data Set 
	     comp.tr <- tr3a[,col1]
	     colnames(comp.tr) <- ft1$V2[col1]
	     bc <- cbind(ac3a,su3a,comp.tr)
	     colnames(bc) <- c("Activity","Subject",colnames(comp.tr))
	     library(dplyr)

	     # Get Final Means By Subject, Activity
	     by_both <- bc %>% group_by(Subject,Activity)
	     	fin <- by_both %>% summarise_each(funs(mean))
		fin$Activity <- atlab1$V2[match(fin$Activity,atlab1$V1)]
		write.table(fin,row.names=FALSE,file=out1)
		return(fin)
	}

	 
    
	     