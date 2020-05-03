deploy-staging:
	./scripts/build.sh
	serverless deploy --stage=staging
