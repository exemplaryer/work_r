# mpg 데이터를 이용해 분석 문제를 해결해 보세요.

# mpg 데이터의 fl 변수는 자동차에 사용하는 연료(fuel)를 의미
#
# 연료 종류별 가격(갤런당 USD)
# fl    연료 종류    가격(갤런당 USD)
# c     CNG          2.35
# d     diesel       2.38
# e     ethanol E85  2.11
# p     premium      2.76
# r     regular      2.22

# stringsAsFactors = F : mpg의 fl과 동일하게 문자 타입(chr)으로 만들어야 오류가 발생 안함
fuel <- data.frame(fl = c("c", "d", "e", "p", "r"),
                   price_fl = c(2.35, 2.38, 2.11, 2.76, 2.22),
                   stringsAsFactors = F)
fuel

# Q1 mpg 데이터에는 연료 종류를 나타낸 fl 변수는 있지만 연료 가격을 나타낸 변수는 없습니다. 위에서 만든 fuel 데이터를 이용해 mpg 데이터에 price_fl(연료 가격) 변수를 추가하세요.
# 힌트: left_join()을 이용해 mpg 데이터에 fuel 데이터를 합치면 됩니다. 두 데이터에 공통으로 들어있는 변수를 기준으로 삼아야 합니다.

# Q2 연료 가격 변수가 잘 추가됐는지 확인하기 위해 model, fl, price_fl 변수를 추출해 앞부분 5행을 출력해 보세요.
# 힌트: select()와 head()를 조합하면 됩니다.