echo "Criando as imagens...

docker build -t lidsarti/projeto-backend:1.0 backend/.
docker build -t lidsarti/projeto-database:1.0 database/.

echo "Realizando o push das imagens..."
docker push lidsarti/projeto-backend:1.0
docker push lidsarti/projeto-database:1.0

echo "Criando serviços no cluster kubermetes..."
kubectl apply -f ./services.yml

echo "Criando os deployments..."
kubectl apply -f ./deployment.yml