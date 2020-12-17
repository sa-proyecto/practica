scp -r /var/lib/jenkins/workspace/pipeline/dist/ medinillag@agent.medinillag.com:~/
ssh medinillag@agent.medinillag.com "sudo cp -r ~/dist/. /var/www/html"
