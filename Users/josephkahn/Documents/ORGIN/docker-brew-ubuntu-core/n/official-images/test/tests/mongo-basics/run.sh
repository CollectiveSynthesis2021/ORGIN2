if [[ "$testName" == *tls* ]]; then
	tlsImage="$("$testDir/../image-name.sh" librarytest/mongo-tls "$image")"
	"$testDir/../docker-build.sh" "$testDir" "$tlsImage" <<-EOD
		FROM alpine:3.14 AS certs
		RUN apk add --no-cache openssl
		RUN set -eux; \
			mkdir /certs; \
