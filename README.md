# How to install KNUE OnlineJudge

![](https://github.com/knue-comedu/OnlineJudgeDeploy/blob/knue-oj/KNUE-OJ_preview_202402.gif?raw=true)

KNUE 온라인 저지 설치방법 간단 매뉴얼   

## Requirements (요구사항)
KNUE 온라인 저지는 도커로 작동합니다.   
따라서 설치하고자 하는 서버에 도커와 도커 컴포즈를 먼저 설치해주세요.   

docker: [https://docs.docker.com/engine/install/ubuntu/](https://docs.docker.com/engine/install/ubuntu/)   

```bash
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

docker-compose: [https://docs.docker.com/compose/install/linux/](https://docs.docker.com/compose/install/linux/)

```bash
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/download/v2.26.0/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose
```

## Download KNUE-OJ docker-compose.yml

터미널에 아래 명령어를 입력하여 docker-compose.yml 파일을 다운로드합니다.

```bash
wget https://raw.githubusercontent.com/knue-comedu/OnlineJudgeDeploy/knue-oj/docker-compose.yml
```

## docker-compose up

다운로드 받은 docker-compose.yml을 이용하면 자동으로 KNUE 온라인 저지 최신 버전을 다운로드하고 설치합니다.   
관리자는 필요시 docker-compose.yml 파일을 열고 각종 설정을 고칠 수 있습니다.   

```bash
sudo docker-compose up -d
```

## How to Update OnlineJudge Docker Image
온라인 저지를 업데이트하려면, 도커 컨테이너를 중지시키고 최신 버전 이미지를 다운로드 받은 후 다시 실행하세요.   
참고) containrrr/watchtower를 이용하면, 관리자의 개입 없이 자동으로 업데이트할 수 있습니다.

```bash
sudo docker-compose down
sudo docker-compose pull
sudo docker-compose up -d
```

구버전 도커 이미지가 계속 쌓일 경우 서버 용량을 많이 차지할 수 있습니다. 과거 이미지를 제거하려면 아래 명령어를 사용하세요.

```bash
sudo docker image prune
```

## 초기 관리자 계정 정보

관리자 계정 정보는 다음과 같습니다.   
ID: root
PW: rootroot

## 학생 계정 일괄 등록

학생 계정을 일괄 등록하려면, CSV 파일을 만들어야 합니다. 열은 다음과 같습니다.   
id, password, email, nickname   

이때, 첫 열에 헤더는 입력하지 않습니다. 예를 들어, 학번이 10101~10103인 학생을 등록하고자 하면 다음과 같습니다.   

10101, password1, 10101@knue.ac.kr, 학생1   
10102, password2, 10102@knue.ac.kr, 학생2   
10103, password3, 10103@knue.ac.kr, 학생3   

이 CSV 파일을 UTF-8로 반드시 인코딩하여 저장한 후 관리자 계정에서 일괄등록하면 됩니다.
