
Assessment

Install Terraform

To run files:

1. Make sure that you have aws-cli installed.  

The key used is called “Assessment”
This will be used so that Terraform may ssh into the instance and run an update on the word press server.

2. Configure your aws settings in your ~/.aws/credentials with the Access Id Key and Secret Key 

3. Run command to initialize in directory: 
terraform init 

4. To create a plan of the manifest files:
terraform plan -var-file=variables.tfvars -out terraform.plan

5. To run terraform plan:
terraform apply terraform.plan

6. If you want to remove your infrastructure that was previously created:
terraform destroy

Note: In the main.tf file in the provider block -> connection is where the private key is located for ssh. 

For user input when destroying:

var.local_ip
Enter a value: 
Enter 0.0.0.0

var.region
Enter a value: 
Enter us-east-1
