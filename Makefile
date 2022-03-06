TILT_PORT=23000
.PHONY: up down

crd:
	kubectx docker-desktop
	kubectl apply -f kubernetes/base/crd.yaml

up: crd
	kubectx docker-desktop
	tilt --port $(TILT_PORT) up

down:
	kubectx docker-desktop
	tilt down
