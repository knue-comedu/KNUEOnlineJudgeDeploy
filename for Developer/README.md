# How to download KNUE OnlineJudge 

## Download KNUE-OJ Source 

```bash
mkdir knue-oj
cd knue-oj

git clone https://github.com/knue-comedu/Judger
git clone https://github.com/knue-comedu/JudgeServer
git clone https://github.com/knue-comedu/OnlineJudgeFE
git clone https://github.com/knue-comedu/OnlineJudgeBE
git clone https://github.com/knue-comedu/OnlineJudgeDeploy

cp OnlineJudgeDeploy/docker-compose.yml docker-compose.yml
```

## OnlineJudgeFE Build

```bash
cd OnlineJudgeFE

npm install
npm run build

cd ..
```

## docker-compose up -d

```bash
sudo docker-compose up -d --build
```