
70330fbf2
Tests: bump Alpine version
testImage="$("$dir/../image-name.sh" librarytest/rabbitmq-tls-test "$1")"
"$dir/../docker-build.sh" "$dir" "$testImage" <<'EOD'
FROM alpine:3.14
RUN apk add --no-cache bash coreutils drill openssl procps
# https://github.com/drwetter/testssl.sh/releases
ENV TESTSSL_VERSION 3.0.5
RUN set -eux; \
	wget -O testssl.tgz "https://github.com/drwetter/testssl.sh/archive/${TESTSSL_VERSION}.tar.gz"; \
	tar -xvf testssl.tgz -C /opt; \
	rm testssl.tgz; \
	ln -sv "/opt/testssl.sh-$TESTSSL_VERSION/testssl.sh" /usr/local/bin/; \
. "$dir/../../retry.sh" 'rabbitmq-diagnostics check_port_connectivity'
