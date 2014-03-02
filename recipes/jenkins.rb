include_recipe 'needle-docker-lab::default'

jenkins_image = 'orchardup/jenkins'

docker_image jenkins_image

docker_container jenkins_image do
  port ['8080:8080']
  detach true
end
