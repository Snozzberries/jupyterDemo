# jupyterDemo
Content associated with PowerShell + DevOps Global Summit 2022 session Drive Rapid PowerShell Adoption Using Jupyter Notebooks

## Docker Images

### jupyterhub

Provides JupyterHub image with integration to Azure AD through OAuthenticator and the Fargate Spawner

> Update the Fargate, Secrets Manager, Service URL, and Azure AD App Registration configurations

### dotnet

Provides JupyterNotebook image with integration for dotnet interactive

> Update the dotnet SDK version if applicable

## example.cfn.yml

The cfn template profiles an example of the resources and integrations necessary for Route 53 to manage DNS, Elastic Loadbalancer to handle the inbound client traffic with a certificate from Certificate Manager, with the target group using the Elastic Container Service Fargate Service for the JupyterHub image from Elastic Container Registry (ECR), loading the Azure AD App secret from Secrets Manager, and able to spawn JupyterNotebook tasks from the dotenet image in ECR

> This will NOT work as is, treat this as a reference only

## Notes

### Notes-demo.txt

Provides an outline of the different steps shown during the demo

### notes.sh

Provides basic steps in creating the environment

## workingWithO365.ipynb

Provides the notebook used during the demo