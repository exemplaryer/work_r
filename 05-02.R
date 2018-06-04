# 05-02 변수명 바꾸기

###############
# 변수명 바꾸기

# 1. 실습에 활용할 2개의 변수로 구성된 데이터 프레임을 생성
df_raw <- data.frame(var1 = c(1, 2, 1),
                     var2 = c(2, 3, 2))
df_raw

# 2. rename()을 이용하기 위해 먼저 dplyr 패키지를 설치, 로드하기
# dplyr: 데이터를 원하는 형태로 가공할 때 사용
install.packages("dplyr")    # dplyr 설치
library(dplyr)               # dplyr 로드

# 3. 데이터 프레임 복사본 만들기
# 문제가 발생 시 원래의 상태로 되돌리기 위해 복사본을 만든다.
df_new <- df_raw    # 복사본 생성
df_new

# 4. 변수명 바꾸기
df_new <- rename(df_new, v2 = var2)    # var2를 v2로 수정
df_new

# 5. 원본과 비교해보기
df_raw
df_new
