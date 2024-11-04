# 한국교원대학교 온라인저지 시스템 빌드 방법

## 1. 소스코드 다운로드

```bash
wget https://github.com/knue-comedu/OnlineJudgeDeploy/raw/refs/heads/developer/knue-oj.sh
chmod +x knue-oj.sh
./knue-oj.sh
```


## 2. 도커 이미지 빌드
하나의 명령어로 프론트엔드와 백앤드를 비롯한 모든 소스코드 빌드가 가능합니다.    
docker-compose up 명령어만 터미널에 입력하세요.  
자동으로 모든 빌드가 이루어집니다.

```bash
sudo docker-compose up -d --build
```

## 3. 폴더 구조

docker-compose.yml 파일을 비롯한 폴더의 구조는 다음과 같습니다.  
즉, 최상단에 docker-compose.yml 파일이 있고, 나머지는 소스 폴더가 존재하면 됩니다.

```
Judger/  
JudgeServer/  
OnlineJudgeFE/  
OnlineJudgeBE/  
OnlineJudgeDeploy/  
OJ-AI/  
docker-compose.yml
```