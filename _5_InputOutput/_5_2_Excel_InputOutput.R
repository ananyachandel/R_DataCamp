# install.packages("readxl") : do it in the console
library(readxl)

# fetch all the sheets in excel
print(excel_sheets('./_5_InputOutput/Financial Sample.xlsx'))

# read the excel sheet
df <- read_excel('./_5_InputOutput/Financial Sample.xlsx', sheet = "Sheet1")
print(head(df))

# sum
print(sum(df$`Units Sold`))

# summary
print(summary(df))

# fetch entire worrkbook from excel
entire_workbook <- lapply(excel_sheets('./_5_InputOutput/Financial Sample.xlsx'), read_excel, path='./_5_InputOutput/Financial Sample.xlsx')
print(entire_workbook)

# write to a excel
library(xlsx)
write.xlsx(mtcars, "./_5_InputOutput/mtcars.xlsx")
