# run docker
docker run -3000:3000 -v `pwd`/db:/qaweb/db -v `pwd`/public:/qaweb/public qawebsite_web bundle exec rails s

#push image to docker hub
#docker tag qawebsite_web timvanmourik/scannerqualityassessment:1.0
#docker push timvanmourik/scannerqualityassessment:1.0