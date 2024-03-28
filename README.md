# How to install KNUE OnlineJudge 
# KNUE 온라인 저지 설치하기

## <온라인 저지를 설치 전 필수조건>
### Docker, Docker-compose를 먼저 설치해주세요.

## Download KNUE-OJ docker-compose.yml and up
### 터미널에 아래 명령어를 입력하여 docker-compose.yml 파일을 다운로드합니다.

```bash
wget https://raw.githubusercontent.com/knue-comedu/OnlineJudgeDeploy/knue-oj/docker-compose.yml
```

## docker-compose up
### 도커 컴포즈를 이용하면 자동으로 최신 버전 이미지를 다운로드하여 설치합니다.

```bash
sudo docker-compose up -d
```

## How to Update OnlineJudge Docker Image
### 온라인 저지를 업데이트하려면, 도커 컨테이너를 중지시키고 최신 버전 이미지를 다운로드 받은 후 다시 실행하세요.
### containrrr/watchtower를 이용하면, 자동으로 최신 버전의 도커 이미지로 업데이트할 수 있습니다.

```bash
sudo docker-compose down
sudo docker-compose pull
sudo docker-compose up -d
```