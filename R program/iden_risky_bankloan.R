library(C50)
library(gmodels)
credit <- read.csv("credit.csv")
credit_train <- credit[1:900,-17 ]
credit_test <- credit[901:1000,-17 ]
credit_train_labels = credit[1:900, 17]
credit_test_labels = credit[901:1000, 17]
credit_model <- C5.0(credit_train, as.factor(credit_train_labels))
print(credit_model)
print(summary(credit_model))
credit_pred <- predict(credit_model, credit_test)
print(credit_pred)

CrossTable(credit_test_labels, credit_pred, prop.chisq=FALSE )

---------------------------------------------------------------------

as.factor(credit_train_labels))
> print(credit_model)

Call:
C5.0.default(x = credit_train, y
 = as.factor(credit_train_labels))

Classification Tree
Number of samples: 900 
Number of predictors: 16 

Tree size: 63 

Non-standard options: attempt to group attributes

> print(summary(credit_model))

Call:
C5.0.default(x = credit_train, y
 = as.factor(credit_train_labels))


C5.0 [Release 2.07 GPL Edition]         Wed Oct 08 11:22:05 2025
-------------------------------

Class specified by attribute `outcome'

Read 900 cases (17 attributes) from undefined.data

Decision tree:

checking_balance in {unknown,> 200 DM}: no (414/53)
checking_balance in {< 0 DM,1 - 200 DM}:
:...months_loan_duration <= 11:
    :...credit_history in {critical,good,poor,perfect}: no (71/11)
    :   credit_history = very good: yes (6/1)
    months_loan_duration > 11:
    :...savings_balance in {unknown,500 - 1000 DM,> 1000 DM}:
        :...checking_balance = 1 - 200 DM: no (52/9)
        :   checking_balance = < 0 DM:
        :   :...savings_balance in {500 - 1000 DM,> 1000 DM}: no (8/1)
        :       savings_balance = unknown:
        :       :...credit_history in {critical,poor,perfect}: no (3)
        :           credit_history = very good: yes (2)
        :           credit_history = good:
        :           :...phone = no: yes (10/1)
        :               phone = yes:
        :               :...job in {skilled,unskilled,unemployed}: no (6/1)
        :                   job = management: yes (2)
        savings_balance in {< 100 DM,100 - 500 DM}:
        :...months_loan_duration > 42: yes (35/5)
            months_loan_duration <= 42:
            :...percent_of_income <= 3:
                :...employment_duration = unemployed:
                :   :...dependents <= 1: no (11/3)
                :   :   dependents > 1: yes (2)
                :   employment_duration = > 7 years:
                :   :...job in {unskilled,unemployed}: no (3)
                :   :   job = management:
                :   :   :...savings_balance = < 100 DM: no (7/2)
                :   :   :   savings_balance = 100 - 500 DM: yes (1)
                :   :   job = skilled:
                :   :   :...savings_balance = 100 - 500 DM: no (1)
                :   :       savings_balance = < 100 DM:
                :   :       :...other_credit in {bank,store}: yes (4)
                :   :           other_credit = none: [S1]
                :   employment_duration = 1 - 4 years:
                :   :...amount > 7721: yes (5)
                :   :   amount <= 7721:
                :   :   :...housing = own: no (34/8)
                :   :       housing = other: yes (1)
                :   :       housing = rent:
                :   :       :...years_at_residence <= 3: no (5)
                :   :           years_at_residence > 3:
                :   :           :...credit_history in {critical,good,poor,
                :   :               :                  perfect}: yes (7/1)
                :   :               credit_history = very good: no (1)
                :   employment_duration = < 1 year:
                :   :...other_credit = bank: no (3)
                :   :   other_credit = store: yes (1)
                :   :   other_credit = none:
                :   :   :...job in {unskilled,unemployed}: yes (8/1)
                :   :       job = management: no (2/1)
                :   :       job = skilled:
                :   :       :...age > 28: no (5)
                :   :           age <= 28:
                :   :           :...amount <= 3518: yes (7)
                :   :               amount > 3518: no (3)
                :   employment_duration = 4 - 7 years:
                :   :...savings_balance = 100 - 500 DM: no (8)
                :       savings_balance = < 100 DM:
                :       :...housing in {other,rent}: no (6)
                :           housing = own:
                :           :...purpose in {renovations,car0}: yes (0)
                :               purpose in {education,business}: no (4)
                :               purpose in {furniture/appliances,car}:
                :               :...checking_balance = < 0 DM: yes (5)
                :                   checking_balance = 1 - 200 DM:
                :                   :...months_loan_duration > 18: yes (2)
                :                       months_loan_duration <= 18:
                :                       :...other_credit in {none,
                :                           :                store}: no (3)
                :                           other_credit = bank: yes (1)
                percent_of_income > 3:
                :...credit_history in {perfect,very good}: yes (16/1)
                    credit_history in {critical,good,poor}:
                    :...purpose = education: yes (6)
                        purpose in {business,car0}: no (11/3)
                        purpose = renovations:
                        :...years_at_residence <= 3: yes (2)
                        :   years_at_residence > 3: no (2)
                        purpose = car:
                        :...savings_balance = 100 - 500 DM:
                        :   :...other_credit in {none,store}: no (4)
                        :   :   other_credit = bank: yes (1)
                        :   savings_balance = < 100 DM:
                        :   :...credit_history = poor: yes (2)
                        :       credit_history = critical:
                        :       :...months_loan_duration > 27: yes (4)
                        :       :   months_loan_duration <= 27:
                        :       :   :...amount <= 1301: yes (4/1)
                        :       :       amount > 1301: no (8/1)
                        :       credit_history = good:
                        :       :...amount > 1204: yes (12)
                        :           amount <= 1204:
                        :           :...amount <= 1028: yes (2)
                        :               amount > 1028: no (2)
                        purpose = furniture/appliances:
                        :...savings_balance = 100 - 500 DM: yes (8)
                            savings_balance = < 100 DM:
                            :...checking_balance = 1 - 200 DM:
                                :...age <= 32: no (12)
                                :   age > 32:
                                :   :...years_at_residence <= 3: yes (4)
                                :       years_at_residence > 3: no (3)
                                checking_balance = < 0 DM:
                                :...years_at_residence <= 1: no (7/1)
                                    years_at_residence > 1:
                                    :...months_loan_duration > 16: yes (22/4)
                                        months_loan_duration <= 16:
                                        :...other_credit in {none,
                                            :                bank}: no (7/1)
                                            other_credit = store: yes (1)

SubTree [S1]

purpose in {furniture/appliances,education,renovations,car0}: no (6/1)
purpose in {car,business}: yes (5/1)


Evaluation on training data (900 cases):

            Decision Tree   
          ----------------  
          Size      Errors  

            62  112(12.4%)   <<


           (a)   (b)    <-classified as
          ----  ----
           616    16    (a): class no
            96   172    (b): class yes


        Attribute usage:

        100.00% checking_balance
         54.00% months_loan_duration
         45.44% savings_balance
         32.33% percent_of_income
         27.56% credit_history
         16.78% employment_duration
         16.67% purpose
         10.11% amount
          7.67% housing
          6.78% years_at_residence
          6.78% other_credit
          6.67% job
          3.78% age
          2.00% phone
          1.44% dependents


Time: 0.0 secs

> credit_pred <- predict(credit_model, credit_test)
> print(credit_pred)
  [1] yes no  no  no  no  no  yes no  no  no  no  no  no  no 
 [15] yes yes no  no  no  yes no  no  no  no  no  yes yes yes
 [29] no  yes no  no  no  no  no  yes no  no  yes no  no  no 
 [43] no  no  no  no  no  no  no  no  yes no  no  no  yes no 
 [57] no  no  no  yes no  no  no  no  no  no  no  no  no  no 
 [71] yes no  no  yes no  no  no  no  no  no  yes no  no  yes
 [85] no  no  no  no  yes yes no  no  yes yes no  no  yes no 
 [99] yes yes
Levels: no yes
> CrossTable(credit_test_labels, credit_pred, prop.chisq=FALSE )

 
   Cell Contents
|-------------------------|
|                       N |
|           N / Row Total |
|           N / Col Total |
|         N / Table Total |
|-------------------------|

 
Total Observations in Table:  100 

 
                   | credit_pred 
credit_test_labels |        no |       yes | Row Total | 
-------------------|-----------|-----------|-----------|
                no |        55 |        13 |        68 | 
                   |     0.809 |     0.191 |     0.680 | 
                   |     0.733 |     0.520 |           | 
                   |     0.550 |     0.130 |           | 
-------------------|-----------|-----------|-----------|
               yes |        20 |        12 |        32 | 
                   |     0.625 |     0.375 |     0.320 | 
                   |     0.267 |     0.480 |           | 
                   |     0.200 |     0.120 |           | 
-------------------|-----------|-----------|-----------|
      Column Total |        75 |        25 |       100 | 
                   |     0.750 |     0.250 |           | 
-------------------|-----------|-----------|-----------|

 
