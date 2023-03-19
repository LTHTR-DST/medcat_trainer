NAMESPACE=medcat-trainer
HELM_RELEASE=medcattrainer01
HELM_CHART="./"

helm upgrade \
    --cleanup-on-fail \
    --install  $HELM_RELEASE $HELM_CHART \
    --namespace $NAMESPACE \
    --create-namespace \
    --values private_values.yaml \
    --dry-run > output_dry_run.yaml