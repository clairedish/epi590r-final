# EPI590R repo

This repository belongs to Claire Dishman

How to reproduce: 
I created all the code in an R scrpit and then copied it over into a quarto 
document. The easiest way to change anything would be to change it directly in
the quarto document. Unless you want to change it in the script and then find 
where that code is in the quarto doc. Render the quarto doc for full reproduction.

Data: this data can be found for downlaod at:
https://figshare.com/articles/dataset/Game_of_Thrones_mortality_and_survival_dataset/8259680?file=15458969

AI Note: 
I used AI mainly to help with errors. 8 times out of 10, it was a typo. The 
biggest thing AI helped me figure out was how to run a regression analysis on 
this data. The logistic regression we learned in class wasn't working and when I 
plugged it in to AI, it informed me that it was because some of the varaibles 
were perfect predictors of death. It's Game of Thrones, so some entire houses die, 
therefore if you are classified in that house, you will 100% die. So AI explained
that to me and showed me a different type of logistic regression to run. I also
used AI to stylize the report. I tried to have it walk me through the code as 
much as possible so I could use it again on my own if needed. I used Gemini and 
Claude. 

