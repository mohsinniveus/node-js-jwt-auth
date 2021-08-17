npm install
npm run start

docker build -t gcr.io/niveusanthos/node-js-jwt-auth:v1 .
docker run --name node-js-jwt-auth -p 9090:9090 -d gcr.io/niveusanthos/node-js-jwt-auth:v1
docker push gcr.io/niveusanthos/node-js-jwt-auth:v1


kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml