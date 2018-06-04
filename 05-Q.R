# Q1 ggplot2() 패키지의 mpg 데이터를 사용할 수 있도록 불러온 후 복사본을 만드세요.
df_mpg_raw <- as.data.frame(ggplot2::mpg)
df_mpg_new <- df_mpg_raw
df_mpg_new

# Q2 복사본 데이터를 이용해 cty는 city로, hwy는 highway로 수정하세요.
df_mpg_new <- rename(df_mpg_new, city = cty, highway = hwy)

# Q3 데이터 일부를 출력해 변수명이 바뀌었는지 확인해보세요.
head(df_mpg_new)

# 분석 도전!
# ggplot2 패키지에는 미국 동북중부 437개 지역의 인구통계 정보를 담은
# midwest라는 데이터가 들어 있습니다. midwest 데이터를 사용해 
# 데이터 분석 문제를 해결해 보세요.

# 문제1. ggplot2의 midwest 데이터를 데이터 프레임 형태로 불러온 다음
# 데이터의 특징을 파악하세요.

# 문제2. poptotal(전체 인구) 변수를 total로, popasian(아시아 인구) 변수를
# asian으로 수정하세요.

# 문제3. total, asian 변수를 이용해 '전체 인구 대비 아시아 인구 백분율'
# 파생변수를 만들고, 히스토그램을 만들어 도시들이 어떻게 분포하는지 살펴보세요.

# 문제4. 아시아 인구 백분율 전체 평균을 구하고, 평균을 초과하면 "large",
# 그 외에는 "small"을 부여하는 파생변수를 만들어 보세요.

# 문제5. "large"와 "small"에 해당하는 지역이 얼마나 되는지 빈도표와
# 빈도 막대 그래프를 만들어 확인해 보세요.
