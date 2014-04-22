corr <- function(directory,threshold = 0) {
        
        wd<- paste("/Users/Kuoseph/Documents/Coursera/",directory,sep="")
        
        setwd(wd)
        
        file_list <- list.files(pattern="*.csv") 
        corvec<- numeric()

        
        for (i in 1:332) {
                curr_file<- read.csv(file_list[i])
                x<- curr_file[complete.cases(curr_file),]
        
                if (nrow(x) > threshold){
                        corvec<- c(corvec, cor(x$sulfate, x$nitrate))
                        rm(curr_file)
                        rm(x)
                }
                
                }
           corvec  

        }