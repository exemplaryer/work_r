# 07-01 빠진 데이터를 찾아라! - 결측치 정제하기

#############
# 결측치 찾기

df <- data.frame(sex = c("M", "F", NA, "M", "F"),
                 score = c(5, 4, 3, 4, NA))
df

is.na(df)           # 결측치 확인
table(is.na(df))    # 결측치 빈도 출력
table(is.na(df$sex))        # sex 결측치 빈도 출력
table(is.na(df$score))      # score 결측치 빈도 출력
mean(df$score)    # 평균 산출
sum(df$score)     # 합계 산출

#################
# 결측치 제거하기

# 1. 결측치 있는 행 제거하기
install.packages("dplyr")    # dplyr 설치
library(dplyr)               # dplyr 로드
df %>% filter(is.na(score))  # score가 NA인 데이터만 출력 ( %>% : ctrl + shift + m)

# 2.
df %>% filter(!is.na(score))  # score 결측치 제거

# 3.
df_nomiss <- df %>% filter(!is.na(score))
mean(df_nomiss$score)
sum(df_nomiss$score)

# 4. 여러 변수 동시에 결측치 없는 데이터 추출하기
df_nomiss <- df %>% filter(!is.na(score) & !is.na(sex))
df_nomiss

# 5. 결측치가 하나라도 있으면 제거하기
df_nomiss <- na.omit(df)
df_nomiss

##################################
# 함수의 결측치 제외 기능 이용하기

# 1. na.rm (NA Remove)
mean(df$score, na.rm = T)
sum(df$score, na.rm = T)

# 2.
exam <- read.csv("csv_exam.csv")    # 데이터 불러오기
exam[c(3, 8, 15), "math"] <- NA
exam
exam %>% summarise(mean_math = mean(math))

# 3.
exam %>% summarise(mean_math = mean(math, na.rm = T))

# 4.
exam %>% summarise(mean_math = mean(math, na.rm = T),
                   sum_math = sum(math, na.rm = T),
                   median_math = median(math, na.rm = T))
#################
# 결측치 대체하기

# 1. 평균값으로 결측치 대체하기
mean(exam$math, na.rm = T)

# 2.
exam$math <- ifelse(is.na(exam$math), 55, exam$math)    # math가 NA이면 55로 대체
table(is.na(exam$math))
exam
mean(exam$math)

# 혼자서 해보기: 결측치가 들어있는 mpg 데이터를 이용해 분석 문제를 해결해 보세요.
install.packages("ggplot2")
mpg <- as.data.frame(ggplot2::mpg)
mpg[c(65, 124, 131, 153, 212), "hwy"] <- NA

# Q1.
table(is.na(mpg$drv))
table(is.na(mpg$hwy))

# Q2.
mpg %>% 
  filter(!is.na(hwy)) %>% 
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy))
