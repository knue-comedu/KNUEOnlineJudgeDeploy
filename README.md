# KNUE OnlineJudge

#### 정보 교과 수업을 위한 온라인저지 시스템 구축하기

![](https://github.com/knue-comedu/OnlineJudgeDeploy/blob/3d9def7d2a07d1a15b6e658ba0e7da8f3d9c1472/KNUE-OJ_preview_202402.gif)

## 1. 설치 및 실행

### (1) 우분투 서버 및 도커 설치

우분투 서버를 설치하고 터미널에 접속합니다.  
온라인저지 시스템은 도커 위에서 동작하므로 도커를 설치해야 합니다.

이 매뉴얼을 참고하여 도커를 설치하세요: [https://docs.docker.com/engine/install/ubuntu/](https://docs.docker.com/engine/install/ubuntu/)   

```bash
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

### (2) docker-compose.yml 다운로드

KNUE 온라인저지 시스템은 두 가지 버전으로 제공됩니다. 기본 온라인저지, GPT기능이 추가된 온라인저지 이렇게 두 가지로 나뉩니다. 


기본 버전

```bash
wget -O docker-compose.yml https://raw.githubusercontent.com/knue-comedu/OnlineJudgeDeploy/user/docker-compose.yml
```

GPT 버전
```bash
wget -O docker-compose.yml https://raw.githubusercontent.com/knue-comedu/OnlineJudgeDeploy/user/docker-compose-chatgpt.yml
```

### (3) docker-compose 실행하기

터미널에 아래 명령어를 입력하여 온라인저지 시스템을 실행합니다.

```bash
docker compose up -d
```


## 2. 온라인저지 시스템 업데이트하기

### (1) 도커 이미지 업데이트 방법

온라인 저지를 업데이트하려면, 도커 컨테이너를 중지시키고 최신 버전 이미지를 다운로드 받은 후 다시 실행하세요.  

Tip) containrrr/watchtower를 이용하면 관리자의 개입 없이 도커 이미지를 자동으로 업데이트할 수 있습니다.

```bash
docker compose down
docker compose pull
docker compose up -d
```

### (2) 구버전 도커 이미지 삭제 방법
구버전 도커 이미지가 계속 쌓일 경우 서버 용량을 많이 차지할 수 있습니다. 과거 이미지를 제거하려면 아래 명령어를 사용하세요.

```bash
docker image prune
```

## 3. 초기 관리자 계정 정보

관리자 계정 정보는 다음과 같습니다. 

ID: root  
PW: rootroot

## 4. 학생 계정 일괄 등록하기

[예시 CSV 파일 다운로드](https://raw.githubusercontent.com/knue-comedu/OnlineJudgeDeploy/refs/heads/user/example_accounts.csv)  

학생 계정을 일괄 등록하려면, CSV 파일을 만들어야 합니다. 열은 다음과 같습니다.   

id, password, email, nickname

이때, 첫 열에 헤더는 입력하지 않습니다.  
예를 들어, 학번이 10101 ~ 10103인 학생을 등록하고자 하면 다음과 같습니다.

10101, password1, 10101@example.com, 학생1   
10102, password2, 10102@example.com, 학생2   
10103, password3, 10103@example.com, 학생3

CSV 파일을 반드시 **UTF-8**로 인코딩하여 저장한 후 관리자 계정에서 일괄 등록하면 됩니다.
