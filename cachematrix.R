makeVector <- function(x=numeric()) (
        m<- NULL
        set<- function(y) {
                x<<-y
                m<<- NULL
        }
        get<- function() x
        setmean<- function(x=mean) m<<- mean
        getmean <-function() m
        list(set=set, get=get, 
             setmean=setmean, 
             getmean=getmean)
}
cachemean <-function(x, ...) (
        m<-x$getmean()
        if(!is, null(m))(
                message("getting cached data")
                return(m)
        }
        data<-x$get()
        m<-mena(data, ...)
        x$setmean(m)
        m
}
func_list<- makeVector()
func_list$set(c(1, 2, 3))
func_list$get()
func_list$getmean()
func_list$setmean()
cachemean(func_list)
