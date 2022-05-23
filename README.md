# tfmodule-file_services
Terraform root configuration for deploying File Services to Azure, using modules, with Terratest Unit/Integration testing via Go, Regula (OPA) Policy as Code scanning in an Azure DevOps Pipeline
## [CI/CD Pipeline](https://dev.azure.com/wesleytrust/Terraform/_build?definitionId=67)
Select a stage to view in Azure DevOps. *Note that 'Skipped' stages in the last run, will show as "unknown" by design.*
| Pipeline |
| :------: |
|    [![Build Status](https://dev.azure.com/wesleytrust/Terraform/_apis/build/status/FileServices/SVC-CP%3BENV-P%3B%20tfroot-file_services?repoName=wesley-trust%2Ftfroot-file_services&branchName=main)](https://dev.azure.com/wesleytrust/Terraform/_build/latest?definitionId=67&repoName=wesley-trust%2Ftfroot-file_services&branchName=main)      |
### Testing Stages
| Unit Tests | Integration Tests |
| :--------: | :---------------: |
|    [![Build Status](https://dev.azure.com/wesleytrust/Terraform/_apis/build/status/FileServices/SVC-CP%3BENV-P%3B%20tfroot-file_services?repoName=wesley-trust%2Ftfroot-file_services&branchName=main&stageName=Unit)](https://dev.azure.com/wesleytrust/Terraform/_build/latest?definitionId=67&repoName=wesley-trust%2Ftfroot-file_services&branchName=main)        |          [![Build Status](https://dev.azure.com/wesleytrust/Terraform/_apis/build/status/FileServices/SVC-CP%3BENV-P%3B%20tfroot-file_services?repoName=wesley-trust%2Ftfroot-file_services&branchName=main&stageName=Integration)](https://dev.azure.com/wesleytrust/Terraform/_build/latest?definitionId=67&repoName=wesley-trust%2Ftfroot-file_services&branchName=main)         |
### Deployment Stages
| Plan  | Apply | Replan | Reapply |
| :---: | :---: | :----: | :-----: |
|    [![Build Status](https://dev.azure.com/wesleytrust/Terraform/_apis/build/status/FileServices/SVC-CP%3BENV-P%3B%20tfroot-file_services?repoName=wesley-trust%2Ftfroot-file_services&branchName=main&stageName=Plan)](https://dev.azure.com/wesleytrust/Terraform/_build/latest?definitionId=67&repoName=wesley-trust%2Ftfroot-file_services&branchName=main)   |    [![Build Status](https://dev.azure.com/wesleytrust/Terraform/_apis/build/status/FileServices/SVC-CP%3BENV-P%3B%20tfroot-file_services?repoName=wesley-trust%2Ftfroot-file_services&branchName=main&stageName=Apply)](https://dev.azure.com/wesleytrust/Terraform/_build/latest?definitionId=67&repoName=wesley-trust%2Ftfroot-file_services&branchName=main)   |    [![Build Status](https://dev.azure.com/wesleytrust/Terraform/_apis/build/status/FileServices/SVC-CP%3BENV-P%3B%20tfroot-file_services?repoName=wesley-trust%2Ftfroot-file_services&branchName=main&stageName=RePlan)](https://dev.azure.com/wesleytrust/Terraform/_build/latest?definitionId=67&repoName=wesley-trust%2Ftfroot-file_services&branchName=main)    |     [![Build Status](https://dev.azure.com/wesleytrust/Terraform/_apis/build/status/FileServices/SVC-CP%3BENV-P%3B%20tfroot-file_services?repoName=wesley-trust%2Ftfroot-file_services&branchName=main&stageName=ReApply)](https://dev.azure.com/wesleytrust/Terraform/_build/latest?definitionId=67&repoName=wesley-trust%2Ftfroot-file_services&branchName=main)    |