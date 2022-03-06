k8s_yaml(kustomize('kubernetes/tilt'))
k8s_yaml('kubernetes/base/graph.yaml')
k8s_yaml('kubernetes/base/kube-state-metrics.yaml')

local_resource(
    name='grafana',
    serve_cmd='kubectl -n grafana port-forward svc/grafana-service 3000:3000',
    links=["http://localhost:3000"]
)
