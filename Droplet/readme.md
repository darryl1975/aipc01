## References

1. https://www.howtogeek.com/devops/how-to-create-a-digitalocean-droplet-using-terraform/
   
2. https://www.digitalocean.com/community/tutorials/how-to-use-terraform-with-digitalocean

3. Install terraform
   - https://tecadmin.net/how-to-install-terraform-on-ubuntu/
   - https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
  
4. Install docker using apt repository
   - https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository
   - https://kinsta.com/blog/install-docker-ubuntu/
  
5. Install Docker machine
   - https://www.digitalocean.com/community/tutorials/how-to-provision-and-manage-remote-docker-hosts-with-docker-machine-on-centos-7

6. Terraform steps
    - terraform init
    - terraform validate 
    - terraform plan -var "do_token=${DO_PAT}"
    - terraform apply --auto-approve -var "do_token=${DO_PAT}"
    - terraform destroy -var "do_token=${DO_PAT}"

    export DO_PAT="Digital Ocean Token"