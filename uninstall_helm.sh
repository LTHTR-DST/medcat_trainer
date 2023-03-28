##############################################################################

cp -r /mnt/c/Users/vishnu.chandrabalan/.kube/config ~/.kube/config

CURRENTAKSCONTEXT=$(kubectl config current-context)
AKSNAME=aks-lander-dev
kubectl config use-context $AKSNAME

##############################################################################

NAMESPACE=medcat-trainer
HELM_RELEASE=medcattrainer01

helm uninstall $HELM_RELEASE --namespace $NAMESPACE

##############################################################################
kubectl config use-context $CURRENTAKSCONTEXT
##############################################################################
