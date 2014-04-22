complete <- function(directory, id=1:332) {
        
        wd<- paste("/Users/Kuoseph/Documents/Coursera/",directory,sep="")
        
        setwd(wd)
        
        file_list <- list.files(pattern="*.csv")
        
        for (i in id){
                
                if (!exists("dataset")){
                        dataset <- data.frame(matrix(ncol=2))
                        dataset<- dataset[-1,]
                }
                
                if (exists("dataset")){
                        temp_dataset <-read.csv(file_list[i])
                        ct<- nrow(na.omit(temp_dataset))
                        x<- c(i,ct)
                        dataset<-rbind(dataset, x)
                        rm(temp_dataset)
                }
                
        }
        
        colnames(dataset)<- c("id","nobs")
        
        dataset
}