deploy-staging:
	./scripts/build.sh
	serverless deploy --stage=staging

deploy-production:
	./scripts/build.sh
	serverless deploy --stage=production
