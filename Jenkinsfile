node{
        def python_instagram_test
        stage('Clone repository'){
                git 'https://github.com/lkw5536/python-instagram.git'
        }
        stage('Build image') {
                python_instagram_test = docker.build("python_instagram:latest")
        }
        stage('Test image') {
                python_instagram_test.inside{
                        sh 'python3 tests.py'
                }
        }
        stage('Push image') {
                docker.withRegistry('https://registry.hub.docker.com', 'edenlee511') {
                        python_instagram_test.push("${env.BUILD_NUMBER}")
                        python_instagram_test.push("latest")
                }
        }
}
