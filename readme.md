A Core Web Vitals Logger which logs the cwv in a cloud run service to big query for give hosts peridoically

## Setting up Identity Federation for GitHub Actions
```
set gcp_project_id=pagespeed-insights-logger

gcloud iam workload-identity-pools create "github-pool" --project=%gcp_project_id% --location="global" --display-name="Pool for Github Actions"

gcloud iam workload-identity-pools providers create-oidc "github-action-provider" --project=%gcp_project_id% --location="global" --workload-identity-pool="github-pool" --display-name="Github Action Provider" --attribute-mapping="google.subject=assertion.sub,attribute.actor=assertion.actor,attribute.aud=assertion.aud" --issuer-uri="https://token.actions.githubusercontent.com"

gcloud iam service-accounts add-iam-policy-binding "terraform@pagespeed-insights-logger.iam.gserviceaccount.com" --project=%gcp_project_id% --role="roles/iam.workloadIdentityUser" --member="principalSet://iam.googleapis.com/projects/498248676648/locations/global/workloadIdentityPools/github-pool/*"
```



## pagespeed api
docs: https://developers.google.com/speed/docs/insights/rest/v5/pagespeedapi/runpagespeed
Enable and resrict the api key manually
https://medium.com/interleap/automating-terraform-deployment-to-google-cloud-with-github-actions-17516c4fb2e5

## set up
```
set gcp_project_id=pagespeed-insights-logger
set gcp_project_name=PageSpeed Insights Logger

gcloud projects create %gcp_project_id% --name="%gcp_project_name%"
```