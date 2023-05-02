apiVersion: apps/v1
kind: Deployment
metadata:
  name: hello-app
  labels:
    role: app
spec:
  replicas: 2
  selector:
    matchLabels:
      role: app
  template:
    metadata:
      labels:
        role: app
    spec:
      containers:
      - name: app
        image: ravi3177/kubernetesproject
        resources:
          requests:
            cpu: 10m
