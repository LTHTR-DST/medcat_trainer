##############################################################################

cp -r /mnt/c/Users/vishnu.chandrabalan/.kube/config ~/.kube/config

CURRENTAKSCONTEXT=$(kubectl config current-context)
AKSNAME=aks-lander-dev
kubectl config use-context $AKSNAME

##############################################################################

NAMESPACE=medcat-trainer
HELM_RELEASE=medcattrainer01
HELM_CHART="./"

helm upgrade \
    --cleanup-on-fail \
    --install  $HELM_RELEASE $HELM_CHART \
    --namespace $NAMESPACE \
    --create-namespace \
    --values values.yaml

##############################################################################
kubectl config use-context $CURRENTAKSCONTEXT
##############################################################################
