pipeline{
    agent any
    stages{
        stage('build '){
            steps{
                echo 'hola estoy en la imagen del back '
                bat 'docker build --tag chillvaccback .'
            }
        }
         stage('build container'){
            steps{
                echo 'estoy en el contenedor del back'
                bat 'docker run -dp 0.0.0.0:8000:8000 chillvaccback' 
            }
        }
    }
}
