#!/bin/bash
echo "Hello, this is a simple run.sh script."
#go test -p 1 -v --coverprofile="../final.out" -coverpkg=./... -timeout 30m 2>&1| tee ../final.log
#go test  -p 1 -v --cover ./... -coverprofile="final.out" -coverpkg=./... -timeout 30m 2>&1| tee ../final.log
#go test -coverprofile=coverage.out ./... ; go tool cover -func=coverage.out | grep -v "total:" ; go tool cover -html=coverage.out
#go tool cover -html=final.out -o coverage.html
go test  -p 1 -v --cover ./... -coverprofile="final.out" -coverpkg=./... -timeout 30m 2>&1| tee ../final.log
# Generate both textual and HTML coverage reports
go tool cover -func=final.out && go tool cover -html=final.out -o coverage.html

