node
    {
      
    stage ('git pull')
    {
        git 'https://github.com/adhavvishal/hello-world'
    }
    
    stage ('Build')
    {
        sh 'mvn clean package'
    }
    
    stage ('Copy war file to docker'){
        sh 'scp -r -o StrictHostKeyChecking=no Dockerfile webapp/target/webapp.war root@35.89.52.26:/root/'
    }
    
    stage ('Remove'){
        sh 'ssh root@35.89.52.26 docker stop tom'
        sh 'ssh root@35.89.52.26 docker rm tom'
        sh 'ssh root@35.89.52.26 docker rmi tom tomcat'
    }
    
    stage ('Docker Build'){
        sh 'ssh root@35.89.52.26 docker build -t tom .' 
    }
    
    stage ('Docker run'){
        sh 'ssh root@35.89.52.26 docker run --name tom -itd -p 8090:8080 tom'
    }
}
