
gcloud init --console-only


gcloud iam service-accounts list


Create file compute-instance.json
gcloud iam service-accounts keys create ./keys/compute-instance.json --iam-account <SERVICE_ACCOUNT_EMAIL>

create keygen