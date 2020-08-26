# 1) & 2)
Web API listening to localhost at port 8080, Displays 'Hello!'
With health endpoints returns status, version and uptime.


# 3) What other information would you add to health endpoint json object in step 2?
```
	  Other information I would like to add is response time, Ping. Also check dependent services like cache, database for the Url. This additional information can be helpful for the engineers.  
```
# 4) Create a docker file to build, package, deploy, and run this application locally with Docker.
```
		git clone https://github.com/hvadnala/Project_Docker
		cd Project_Docker
	Docker command to build the image from Dockerfile
		docker build -t flask_app .

	Docker command to processes in isolated container
		docker run -d -p8080:8080 flask_app
```

# 5) How would you automate the build/test/deploy process for this application? (a verbal answer is enough. installation of CICD is bonus, not required)
```	
	What branching strategy would you use for development?
		Feature branches, following the git flow.
	What CICD tool/service would you use?
		CI- Git->GitHub(or Azure repos)-> Jenkins(Build Dockerfile) CD- Ansible/Kubernetes (Helm can also be added)
	What stages would you have in the CICD pipeline?
		DEV->BUILD->TEST->PostBuild->DEPLOY
	What would be the purpose of each stage in CICD pipeline
		DEV->Work on code as required and push code to remote server.
		Build->Automate thru plugins and build images
		Test->Run Regression/Sanity test and check security
		PostBuild-> Automate the Deployments with Ansible and parameters defined.
		Deploy-> Production environment
```