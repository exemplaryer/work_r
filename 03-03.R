# 03-03 함수 꾸러미, '패키지' 이해하기

# 패키지(packages) 란?
# 패키지는 함수들이 여러 개 들어있는 꾸러미

# 함수를 사용하려면 패키지 설치 먼저!
# 패키지 설치하기 > 패키지 로드하기 > 함수 사용하기
# 패키지 설치는 한 번만 설치하면 되지만
# 패키지를 로드하는 작업은 R 스튜디오를 새로 시작할 때마다 반복해야 한다.

# 1. ggplot2 패키지 설치하기
# 데이터를 그래프로 표현하는 작업을 할 때 가장 많이 사용하는 패키지 ggplot2
# ggplot2 패키지 설치
install.packages("ggplot2")

# 2. ggplot2 패키지 로드하기
# ggplot2 패키지 로드
library(ggplot2)

# 3. ggplot2 패키지의 함수 사용하기
# 여러 문자로 구성된 변수 생성
x <- c("a", "a", "b", "c")
x

# 빈도 막대 그래프 출력
qplot(x)

# ggplot2의 mpg 데이터로 그래프 만들기
# mpg(Mile Per Gallon: 연비) 예제 데이터는 미국 환경 보호국에서 공개한 자료로,
# 1999~2008년 사이 미국에서 출시된 자동차 234종의 연비 관련 정보를 담고 있다.
mpg

# '고속도로 연비별 빈도 막대 그래프'
# hwy는 자동차가 고속도로에서 1갤런에 몇 마일을 가는지 나타낸 변수

# data에 mpg, x축에 hwy 변수 지정해 그래프 생성
qplot(data = mpg, x = hwy)

# x축 cty
qplot(data = mpg, x = cty)

# x축 drv, y축 hwy
qplot(data = mpg, x = drv, y = hwy)

# x축 drv, y축 hwy, 선 그래프 형태
qplot(data = mpg, x = drv, y = hwy, geom = "line")

# x축 drv, y축 hwy, 상자 그림 형태
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot")

# x축 drv, y축 hwy, 상자 그림 형태, drv별 색 표현
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot", colour = drv)

# qplot 함수 메뉴얼 출력
?qplot
