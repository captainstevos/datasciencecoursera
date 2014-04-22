pollutantmean <- function(directory, pollutant, id=1:332) {
        wd<- paste("/Users/Kuoseph/Documents/Coursera/",directory,sep="")
        setwd(wd)
        
        file_list <- list.files(pattern="*.csv")
        
        for (i in id){
                
                if (!exists("dataset")){
                        dataset <- data.frame(matrix(ncol=4))
                }
                
                if (exists("dataset")){
                        temp_dataset <-read.csv(file_list[i])
                        names(dataset) <- names(temp_dataset)   
                        dataset<-rbind(dataset, temp_dataset)
                        rm(temp_dataset)
                }
                
        }
        x<- dataset[,pollutant]
        mean(x, na.rm=TRUE)
}