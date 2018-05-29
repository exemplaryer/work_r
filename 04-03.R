# 04-03 외부 데이터 이용하기 - 축적된 시험 성적 데이터를 불러오자!

####################
# 엑셀 파일 불러오기

# 1. excel_exam.xlsx 열어보기
# id(번호), class(반), math(수학), english(영어), science(과학)

# 2. 프로젝트 폴더에 엑셀 파일 삽입하기
# excel_exam.xlsx 파일을 프로젝트 폴더에 넣어둡니다.

# 3. readxl 패키지 설치하고 로드하기
install.packages("readxl")
library(readxl)

# 4. 엑셀 파일 불러오기: read_excel()
# 엑셀 파일을 데이터 프레임으로 만드는 기능
df_exam <- read_excel("excel_exam.xlsx")  # 엑셀 파일을 불러와 df_exam에 할당
df_exam
# df_exam <- read_excel("C:/work_r/excel_exam.xlsx")

# 5. 분석하기
mean(df_exam$english)
mean(df_exam$science)

# 엑셀 파일 첫 번째 행이 변수명이 아니라면?
df_exam_novar <- read_excel("excel_exam_novar.xlsx", col_names = F)
df_exam_novar

# R언어의 true, false는 TRUE, FALSE 혹은 T, F로 사용

# 엑셀 파일에 시트가 여러 개 있다면?
# 엑셀 파일의 세 번째 시트에 있는 데이터 불러오기
df_exam_sheet <- read_excel("excel_exam_sheet.xlsx", sheet = 3)
df_exam_sheet

###########################################
# CSV(Comma-Separated Values) 파일 불러오기

# 1. 프로젝트 폴더에 CSV 파일 삽입하기
# csv_exam.csv 파일 프로젝트 폴더에 넣어둡니다.

# 2. CSV 파일 불러오기: 기본 내장된 read.csv()
df_csv_exam <- read.csv("csv_exam.csv")
df_csv_exam

# CSV 파일 첫 번째 행이 변수명이 아니라면?
df_csv_exam <- read.csv("csv_exam.csv", header = F)
df_csv_exam

# 문자가 들어 있는 파일을 불러올 때는 stringsAsFactors = F
df_csv_exam <- read.csv("csv_exam.csv", stringsAsFactors = F)
df_csv_exam

#####################################
# 데이터 프레임을 CSV 파일로 저장하기

# 1. 데이터 프레임 만들기
df_midterm <- data.frame(english = c(90, 80, 60, 70),
                         math = c(50, 60, 100, 20),
                         class = c(1, 1, 2, 2))
df_midterm

# 2. CSV 파일로 저장하기: write.csv()
write.csv(df_midterm, file = "df_midterm.csv")

#####################
# RData 파일 활용하기

# RData(.rda 또는 .rdata)는 R 전용 데이터 파일입니다.
# R 전용 파일이므로 다른 파일들에 비해 R에서 읽고 쓰는 속도가 빠르고
# 용량이 작다는 장점이 있다.

# 1. 데이터 프레임을 RData 파일로 저장하기: save()
save(df_midterm, file = "df_midterm.rda")

# 2. RData 파일 불러오기: load()
rm(df_midterm)             # 변수 삭제
df_midterm                 # 변수가 없기 때문에 에러 발생
load("df_midterm.rda")     # RData 파일 불러오기
df_midterm                 # 불러온 데이터 확인

# rda 파일을 불러오면 저장할 때 사용한 데이터 프레임이 자동으로 만들어지기
# 때문에 새 변수에 할당하지 않습니다.

# 엑셀 파일 불러와 df_exam에 할당하기
df_exam <- read_excel("excel_exam.xlsx")

# csv 파일 불러와 df_csv_exam에 할당하기
df_csv_exam <- read.csv("csv_exam.csv")

# Rda 파일 불러오기
load("df_midterm.rda")


