# Q1 ggplot2() 패키지의 mpg 데이터를 사용할 수 있도록 불러온 후 복사본을 만드세요.
df_mpg_raw <- as.data.frame(ggplot2::mpg)
df_mpg_new <- df_mpg_raw
df_mpg_new

# Q2 복사본 데이터를 이용해 cty는 city로, hwy는 highway로 수정하세요.
df_mpg_new <- rename(df_mpg_new, city = cty, highway = hwy)

# Q3 데이터 일부를 출력해 변수명이 바뀌었는지 확인해보세요.
head(df_mpg_new)
