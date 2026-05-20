# OficinaConectada Platform Runtime Infra

Repositorio dedicado ao provisionamento da plataforma de execucao da `OficinaConectada`.

## Escopo

- Amazon EKS
- Node group gerenciado
- OIDC provider para IRSA
- Addons essenciais do cluster
  - metrics-server
  - external-secrets
  - external-dns
  - aws-load-balancer-controller
- Namespace principal da plataforma
- Outputs para integracao com `app-deployments`

## Dependencias de infraestrutura

Este repositorio reutiliza a VPC criada em `oficinaconectada-foundation` e consome endpoints da camada `data-platform` quando necessario.

## Autenticacao do pipeline

- `AWS_GITHUB_ACTIONS_ROLE_ARN` como GitHub Variable
- GitHub OIDC para assumir role na AWS

## Segredos e configuracoes no AWS Secrets Manager

Os valores operacionais deste repositorio devem existir em:

- `oficinaconectada/prod/infra/platform-runtime`

## Modelo de ambientes

- `local`: desenvolvimento fora da AWS, sem participacao desta esteira Terraform
- `prod`: unico ambiente provisionado por estes workflows

## Observacao de seguranca

Os valores sensiveis nao devem ser versionados em `terraform.tfvars` ou arquivos de estado locais. O pipeline foi preparado para consumir tudo a partir do AWS Secrets Manager.

## Execucao local

```bash
cd terraform
terraform init
terraform validate
terraform plan
```
