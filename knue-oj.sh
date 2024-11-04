mkdir knue-oj
cd knue-oj

git clone git@github.com:knue-comedu/Judger.git Judger
git clone git@github.com:knue-comedu/JudgeServer.git JudgeServer
git clone git@github.com:knue-comedu/OnlineJudgeFE.git OnlineJudgeFE
git clone git@github.com:knue-comedu/OnlineJudgeBE.git OnlineJudgeBE
git clone git@github.com:knue-comedu/OnlineJudgeDeploy.git OnlineJudgeDeploy
git clone git@github.com:knue-comedu/OJ-AI.git OJ-AI

cp OnlineJudgeDeploy/docker-compose.yml docker-compose.yml
