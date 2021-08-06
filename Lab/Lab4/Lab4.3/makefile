main:	download login create
clean:
	rm -r lab4.2
	rm -r lab4.3

download:
	git clone https://github.com/robiulalam82-BC/Lab4.2.git
	git clone --branch deploy-replica https://github.com/robiulalam82-BC/Lab4.3.git

login:
	heroku login

create:
	cd Lab4.2
	npm install
	git init
	git add .
	git commit -m "backend commit"
	heroku create questboardbackend
	heroku git:remote -a questboardbackend
	git push heroku HEAD:master
	cd ..
	cd lab4.3
	git init
	git add .
	git commit -m "frontend commit"
	heroku create questboardfrontend
	heroku git:remote -a questboardfrontend
	git push heroku HEAD:master
	cd ..


deploy:
	cd Lab4.2
	git push heroku master
	heroku open
	cd ..
	cd lab4.3
	git push heroku main
	heroku open
	cd ..
