# gs-database
postgresql database CI/CD for runner

## 프로젝트에 관해

> Gitlab-Runner 인스턴스 에서만 작동합니다.

이 프로젝트는 Postgres 기반 DB를 컨테이너화 하여 관리하기 위한 환경을 제공합니다.
다른 프로젝트에서 사용할 때에는 포크(fork) 한 다음, variables 를 별도로 지정한 다음 runner에 할당해주세요.
기본 instance runner가 실행될 수 있으니 해당 runner에서 작동했는지를 확인하고 관련 컨테이너와 볼륨을 삭제한 다음 runner를 작동해주세요.

## 구성 파일

- `docker-compose.yml`: Postgres 컨테이너 실행 설정
- `.gitlab-ci.yml`: GitLab CI/CD 파이프라인 설정
- `db/init/001_create_extensions.sql`: postGIS 초기 설정
- `pgadmin/servers.json`

## 사용방법

DinD 모드의 Runner에서 유효합니다.

Gitlab Variable 에서 아래 4개에 대한 Variable을 등록해주세요.

- POSTGRES_USER
- POSTGRES_PASSWORD 
- POSTGRES_DB 
- PGADMIN_ROOT (PGAdmin의 SuperUser 계정)
- PGADMIN_PW

## github action

https://github.com/marketplace/actions/bypass-cloudflare-for-github-action

이걸로 cloudflare cdn 환경에서 작동하는 gitlab에도 push mirroring 할 수 있습니다.
