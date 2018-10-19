
Assessment files: 
main.tf,
config.tf,
outputs.tf,
security.tf,
variables.tf,
terraform.plan,
variables.tfvars,
terraform.tfsstate,
terraform.tfstate.backup


These files will create the security groups for the inbound and outbound connections, an elastic ip and a wordpress instance.

Used Terraform v0.11.8
----------------------
To run files:

1. aws-cli should be installed.  

2. Configure your aws settings in your ~/.aws/credentials with your Access Id Key and Secret Key 

3. Run command to initialize in directory: 
terraform init 

4. To create a plan of the manifest files:
terraform plan -var-file=variables.tfvars -out terraform.plan

5. To run terraform plan:
terraform apply terraform.plan

6. If you want to remove your infrastructure that was previously created:
terraform destroy

Note: In the main.tf file in the provider block -> connection is where the private key is used for ssh. 

For when destroying:

When asked:

var.local_ip
Enter:
0.0.0.0

var.region
Enter:
us-east-1

It will ask if you want to destroy type
Enter: 
yes


