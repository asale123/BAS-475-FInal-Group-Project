library(regclass)
library(readr)
library(dplyr)
library(tsibble)
library(tstools)
library(ggplot2)
library(lubridate)

CREDIT <- read_csv("credit.csv")
# View(CREDIT)

##Create the months variable to corresponds to the credits values
CREDIT_TS <- ts(CREDIT, frequency = 12)



## Plot time series  (3 graphs)
      ## 1
tsplot(CREDIT_TS)


      ## 2
plot(ts(CREDIT_TS, start= 0 , frequency=12))

      ## 3
ts.plot(ts(CREDIT_TS, start= 0 , frequency=12))


## Filters (2 graphs)

    ## 1 
# filter(data, filter=filter_coefficients, sides=2,
#        method="convolution", circular=F)

    ## 2
#diff(data, lag=4, differences=1)

tsibbledata::aus_retail %>% 
  filter(Industry == "Clothing retailing") %>% 
  filter(State  == "Australian Capital Territory") ->RANDOMSERIES
RANDOMSERIES <- RANDOMSERIES[1:421,]
plot(RANDOMSERIES)


## Simulation (1 chunk)




## Auto Corr (2 graphs)

    ## 1 
# acf(data, type='correlation', na.action=na.pass)

    ## 2 Choice one below
# acf(data, type='partial', na.action=na.pass)
# pacf(data, na.action=na.pass)



## Parameter Estimation(3 chunks)

    ## 1 
#ar(x=data, aic=T, order.max = NULL,
# c("yule-walker", "burg", "ols", "mle", "yw"))

    ## 2
#arima(data, order=c(p, 0, q),method=c('ML'))

    ## 3
# AICc(fittedModel)


## Forecasting (2 graphs)

    #1
# fit<-predict(arima_model, number_to_predict)
# ts.plot(data,
#         xlim=c(1, length(data)+number_to_predict),
#         ylim=c(0, max(fit$pred+1.96*fit$se)))
# lines(length(data)+1:length(data)+
#         number_to_predict, fit$pred)


    #2
#autoplot(forecast(arima_model, level=c(95),
# h=number_to_predict))



