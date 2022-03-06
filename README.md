# tilt-grafana

A general Grafana operator and instance to use locally with Kubernetes services

# Requirements

- A Mac (Linux might work, not sure)
- make (I think comes with xcode, git, etc)
- docker-desktop - Enabled Kubernetes (and disable Fuse)
- kubectl - https://kubernetes.io/docs/tasks/tools/install-kubectl/
- kustomize - https://kubectl.docs.kubernetes.io/installation/kustomize/
- tilt - https://docs.tilt.dev/install.html

# Configure

Many services will require the Custom Resource Definitions (CRD) of Grafana, if not Grafana itself, to start properly. To install them:
- `make crd`

# Run

- `make up` - Starts Grafana by firing up tilt, hit space to see the GUI, ctrl-c to exit
- `make down` - Cleans everything up

# Access

Make sure you `make up` before trying to access Grafana or starting any k8s service needs it (doubt any will though).

Hit space to bring up the web UI. You might see the 'grafana' service as red. Hit the refresh link next to it to turn it green. Click the `http://localhost:3000` link there to access grafana.
```

You can login (bottom left pointing arrow) with the following u/p root/local and change things up. Like when designing new dashbaords.
