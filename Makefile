test:
	export GIN_MODE=release && go test ./runner/... -v -coverprofile .coverage.txt
	go tool cover -func .coverage.txt

test-debug:
	go test ./runner/... -v -coverprofile .coverage.txt
	go tool cover -func .coverage.txt

format:
	go fmt ./runner/...

dep: ## Get the dependencies
	@go get -v -d ./...
	@go get -u github.com/golang/lint/golint