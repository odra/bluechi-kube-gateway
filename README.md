# Eclipse BlueChi Kube Gateway

A (early stage or poc) gateway that bridges kubectl and Eclipse BlueChi/Podman/Quadlet.

## Usage

Build the image:

```
podman build --cap-add=sys_admin -t localhost/autosd-example:latest .
```

Run the container:

```
podman run -d --rm --name autosd-example --privileged localhost/autosd-example:latest
```

"Enter" into the container:

```
podman exec -it autosd-example /bin/bash
```

You can now issue basic podman commands such as:

```
kubectl api-resources
kubectl get po
kubectl get po/mosquitto-pod-app
```

## License

[MIT](./LICENSE)
