# Guestbook Webpage as a Helm Chart

## Overview

originally from the Kubernetes examples project [https://github.com/kubernetes/examples/tree/master/guestbook-go]

The guestbook has been transformed into a Helm chart, as well as utilizing a Redis Helm chart for data storage. 
In addition to this, continuous integration (CI) with GitHub Actions and ArgoCD integration have been implemented to streamline the deployment and management processes.

This project was created as part of a learning journey towards becoming a DevOps engineer and serves as an excellent example of Kubernetes application deployment using modern best practices.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [CI/CD](#cicd)

## Features

- Modernized Guestbook webpage using a Helm chart for deployment.
- Utilizes a Redis Helm chart for data storage.
- Implements continuous integration (CI) with GitHub Actions.
- Integrated with ArgoCD for continuous deployment (CD).

## Getting Started

### Prerequisites

Before you begin, ensure you have the following prerequisites:

- [Kubernetes](https://kubernetes.io/docs/setup/) cluster set up.
- [Helm](https://helm.sh/docs/intro/install/) installed.
- [Redis Helm Chart](https://artifacthub.io/packages/helm/bitnami/redis) installed.

This project is licensed under the [MIT License](LICENSE).

---

Feel free to explore and use this project as a learning resource on your DevOps journey. If you have any questions or suggestions, please don't hesitate to open an issue or contribute to the project. Enjoy your journey as a DevOps engineer!
