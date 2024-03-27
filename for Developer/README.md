# How to download KNUE OnlineJudge 

## Download KNUE-OJ Source 

```bash
mkdir knue-oj
cd knue-oj

git clone git@github.com:knue-comedu/Judge.git Judger
git clone git@github.com:knue-comedu/JudgeServer.git JudgeServer
git clone git@github.com:knue-comedu/OnlineJudgeFE.git OnlineJudgeFE
git clone git@github.com:knue-comedu/OnlineJudgeBE.git OnlineJudgeBE
git clone git@github.com:knue-comedu/OnlineJudgeDeploy.git OnlineJudgeDeploy
git clone git@github.com:knue-comedu/OJ-AI.git OJ-AI

cp OnlineJudgeDeploy/docker-compose.yml docker-compose.yml
```

or

```bash
wget https://raw.githubusercontent.com/knue-comedu/OnlineJudgeDeploy/knue-oj/for%20Developer/knue-oj.sh
bash knue-oj.sh
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

