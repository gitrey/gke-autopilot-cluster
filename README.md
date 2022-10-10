# Solution: GKE Autopilot Cluster

## Simplify the deployment of everything you need to start containerized app development.

Autopilot is a new mode of operation in Google Kubernetes Engine (GKE) that is designed to reduce the operational cost of managing clusters, optimize your clusters for production, and yield higher workload availability. The mode of operation refers to the level of flexibility, responsibility, and control that you have over your cluster. In addition to the benefits of a fully managed control plane and node automations, GKE offers two modes of operation:

- Autopilot: GKE provisions and manages the cluster's underlying infrastructure, including nodes and node pools, giving you an optimized cluster with a hands-off experience.
- Standard: You manage the cluster's underlying infrastructure, giving you node configuration flexibility.

With Autopilot, you no longer have to monitor the health of your nodes or calculate the amount of compute capacity that your workloads require. Autopilot supports most Kubernetes APIs, tools, and its rich ecosystem. You stay within GKE without having to interact with the Compute Engine APIs, CLIs, or UI, as the nodes are not accessible through Compute Engine, like they are in Standard mode. You pay only for the CPU, memory, and storage that your Pods request while they are running.


https://cloud.google.com/kubernetes-engine/docs/concepts/autopilot-overview
