scp -r /var/lib/jenkins/workspace/pipeline/dist/practica-lab-sa medinillag@agent.medinillag.com:~/
ssh medinillag@agent.medinillag.com "sudo cp -r ~/practica-lab-sa/. /var/www/html"
