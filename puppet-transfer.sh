scp -r /var/lib/jenkins/workspace/pipeline/dist/ medinillag@agent.medinillag.com:~/
ssh medinillag@agent.medinillag.com "sudo cp ~/dist/. /var/www/html"
