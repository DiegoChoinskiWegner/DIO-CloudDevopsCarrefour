echo " Criando as imagens......."

docker build -t  diegowegner/projeto-backend:1.0 backend/.
docker build -t  diegowegner/projeto-database:1.0 database/.

echo " Realizando push das imagens"

docker push diegowegner/projeto-backend:1.0
docker push  diegowegner/projeto-database:1.0

echo "Criando servicos no cluster kubernetes"

kubectl apply -f ./services.yml

echo " Criando o deplyment"

kubectl apply -f ./deployment.yml