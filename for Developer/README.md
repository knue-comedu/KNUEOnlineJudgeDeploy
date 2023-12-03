# How to download KNUE OnlineJudge 

## Download KNUE-OJ Source 

```bash
mkdir knue-oj
cd knue-oj

git clone https://github.com/knue-comedu/Judger Judger
git clone https://github.com/knue-comedu/JudgeServer JudgeServer
git clone https://github.com/knue-comedu/OnlineJudgeFE OnlineJudgeFE
git clone https://github.com/knue-comedu/OnlineJudgeBE OnlineJudgeBE
git clone https://github.com/knue-comedu/OnlineJudgeDeploy OnlineJudgeDeploy
git clone https://github.com/knue-comedu/OJ-AI OJ-AI

cp "OnlineJudgeDeploy/for Developer/docker-compose.yml" docker-compose.yml
```

## OnlineJudgeFE Build

```bash
cd OnlineJudgeFE

npm install
npm run build:dll
npm run build

cd ..
```

## docker-compose up -d

```bash
sudo docker-compose up -d --build
```
