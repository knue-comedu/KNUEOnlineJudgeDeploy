# How to install KNUE OnlineJudge

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

기존 이미지를 제거하려면 아래 명령어를 사용하세요.

```bash
sudo docker image prune
```
