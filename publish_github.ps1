# Initialisation du dépot Git local
git init
git branch -M main

# Nettoyage des fichiers temporaires avant commit
Remove-Item copy_all_screens.ps1, COURS_KUBERNETES.md -Force -ErrorAction SilentlyContinue

# Indexation et commit
git add .
git commit -m "feat(k8s): production-ready multi-tier deployment and resilience architecture"

# Publication sur GitHub avec description et tags professionnels
gh repo create k8s-multi-tier-platform --public --source=. --remote=origin --description "Production-ready multi-tier web architecture on Kubernetes: Namespaces isolation, MySQL StatefulSet, HPA autoscaling, and health probes." --push

Write-Output "GITHUB_PUBLISH_COMPLETE"
