APP_NAME=mysqldup

build: clean
	mkdir -p target/release
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o target/release/${APP_NAME}_amd64_linux main.go
	CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -o target/release/${APP_NAME}_amd64_windows main.go
	CGO_ENABLED=0 GOOS=darwin GOARCH=arm64 go build -o target/release/${APP_NAME}_arm64 main.go

clean:
	rm -rf target
