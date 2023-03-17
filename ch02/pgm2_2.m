%프로그램 2-2 Data Analysis
%학습 데이터에 대한 평균과 공분산을 계산하는 프로그램

load data2_1                %저장된 데이터를 불러들임
m1 = mean(X1);              %데이터 행렬의 평균 계산
m2 = mean(X2);
s1 = cov(X1);               %데이터 행렬의 공분산 계산
s2 = cov(X2);
save mean2_1 m1 m2 s1 s2;   %계산된 평균과 공분산을 저장해둠
