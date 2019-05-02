# Kubernates Basics

In this POC we will do the following:

1. Setup Environment for deploying to Kubernates
2. Create Namespace
3. Create Pod
4. Create Replication Controller
5. Create Deployment with load Balancer
6. Create Deployment with Rolling up strategy

## Set up

1. Install Kubectl by following the steps given in the link below :
    https://kubernetes.io/docs/tasks/tools/install-kubectl/


2. Login to the azure environment using service principal :
    https://docs.microsoft.com/en-us/cli/azure/authenticate-azure-cli?view=azure-cli-latest
    ```Java
     az login --service-principal -u $USERID -p $PASSWORD --tenant <Your Tenant Id>
     ```

3. Set the subscription which you are going to use :
    ```Java
    az account set --subscription "<Subscription Name>"
    ```
4. Get credentials to your resource group for kubernates :
    ```Java
    az aks get-credentials --resource-group  <Resource group name> --name <Cluster Name>;
    ```

## Details

1. Creating namespace
    ```Java
    kubectl apply -f namespace.yml
    ```

2. Creating Pod
    ```Java
    kubectl apply -f pod.yml
    ```

3. Creating ReplicationController
    ```Java
    kubectl apply -f replicationController.yml
    ```

4. Creating deployment
    ```Java
    kubectl apply -f deployment-loadBalancer.yml
    ```

5. Creating deployment with Rolling update strategy
    ```Java
    kubectl apply -f deployment-RU.yml
    ```

## Kubernates Commands

https://kubernetes.io/docs/reference/kubectl/cheatsheet/