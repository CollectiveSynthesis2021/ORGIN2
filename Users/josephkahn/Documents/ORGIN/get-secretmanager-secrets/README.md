* fix: update authorization via setup-gcloud action section

updated authorization via setup-gcloud action section to use [`google-github-actions/setup-gcloud@master`](https://github.com/google-github-actions/setup-gcloud) since `GoogleCloudPlatform/github-actions/setup-gcloud@master` is deprecated.

* docs: added a clearer usage of setup-gcloud action

* fix: use absolute link to setup-gcloud action
You can provide credentials using the [setup-gcloud][setup-gcloud] action:
```yaml
- uses: google-github-actions/setup-gcloud@master
  with:
    project_id: ${{ env.PROJECT_ID}}
    service_account_key: ${{ secrets.GCP_SA_KEY }}
    export_default_credentials: true
- uses: google-github-actions/get-secretmanager-secrets@main
```
[sa]: https://cloud.google.com/iam/docs/creating-managing-service-accounts
[gh-runners]: https://help.github.com/en/actions/hosting-your-own-runners/about-self-hosted-runners
[gh-secret]: https://help.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets
[setup-gcloud]: https://github.com/google-github-actions/setup-gcloud
