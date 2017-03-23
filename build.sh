set -e
cd cmd/negotiator
go build .
cd ..
cd ..
imagehash=`docker build -q .`
docker tag $imagehash feedhenry/negotiator:0.0.6
oc deploy --latest negotiator 

