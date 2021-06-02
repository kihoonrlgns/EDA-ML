#변수
y <- c(1,2,3,4,5)
#데이터의 타입 확인(연속형/범주형)
class(y)
# 연속형인가?
is.numeric(y)
# 데이터의 구조가 벡터인가?
is.vector(y)

#데이터구조 함수 패키지에 대한 설명
help('vector')
help('class')

#연속형 데이터 연산
2 + 100
500 - 30
3000 * 21
54/2
80^2

15%/%3
15%%3

# minimum & maximum
min(y)
max(y)

# average & sum
mean(y)
sum(y)

#제곱근/로그
sqrt(100)
log10(100)
exp(100)

# 삼각함수
sin(50)
cos(60)
tan(70)

# 평균이 0이고 표준편차 5인 100개의 random data 생성
x <- rnorm(100, 0, 5)
x

hist(x)
