# Kubernates Basics

## Set up

1. Install Kubectl by following the steps given in the link below :
    https://kubernetes.io/docs/tasks/tools/install-kubectl/
    ```Java
    Eg : az login --service-principal -u $USERID -p $PASSWORD --tenant 3cbcc3d3-094d-4006-9849-0d11d61f484d &&
    ```

2. Login to the azure environment using service principal :
    https://docs.microsoft.com/en-us/cli/azure/authenticate-azure-cli?view=azure-cli-latest

3. Set the subscription which you are going to use :
    az account set --subscription "Sams Membership Platform" &&

4. Get credentials to your resource group for kubernates :
    az aks get-credentials --resource-group  dev-membership-aks-common --name dev-membership-common;

## Details

1. Creating namespace :
    kubectl apply -f namespace.yml

2. Creating Pod :
    kubectl apply -f pod.yml

3. Creating ReplicationController :
    kubectl apply -f replicationController.yml

4. Creating deployment:
    kubectl apply -f deployment-loadBalancer.yml

5. Creating deployment with Rolling update strategy :
    kubectl apply -f deployment-RU.yml

## Kubernates Commands

https://kubernetes.io/docs/reference/kubectl/cheatsheet/