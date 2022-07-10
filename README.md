![image](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Docker_%28container_engine%29_logo.svg/2560px-Docker_%28container_engine%29_logo.svg.png)

# Docker CI-CD

This project (weight tracker app) deploy using Docker.<br>
Weight Tracker app &rarr;  [Click Here](https://github.com/BemjaminS/bootcamp-app-U)

in the Dockerfile:
- [x] From node:14-alpine 
- [x] Copy app to Image work directory 
- [x] npm install
- [x] EXPOSE port to 8080 
- [x] RUN: npm run initdb
- [x] ENTRYPOINT: npm run dev


#Project Overview:
![image](https://bootcamp.rhinops.io/images/docker-cicd.png)
![image](https://bootcamp.rhinops.io/images/feature-branch.png)

# pipeline: Using multi Stages Pipeline
1. Triggered by main/feature*
2. Docker build and push to Azure Container registry.
3. Continues Deployment To Staging environment
   * Logging To ACR
   * Delete old Container are running if exist
   * Pull the latest images using $(tag)
4. Continues Delivery To Production environment
   * Waiting to Manually approval
   * Logging To ACR
   * Delete old Container are running if exist
   * Pull the latest images using $(tag)
   
5. Run The app in both Environment

**Example:**
![img](https://i.postimg.cc/t4KzDw7Y/Screen-Shot-2022-07-10-at-6-08-56.png)

# Result:
![img](https://bootcamp.rhinops.io/images/docker-envs.png)
