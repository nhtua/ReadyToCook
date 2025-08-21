set -x GRPC_PYTHON_BUILD_SYSTEM_OPENSSL 1
set -x GRPC_PYTHON_BUILD_SYSTEM_ZLIB 1
set -x CFLAGS -I/opt/homebrew/opt/openssl/include
set -x LDFLAGS -L/opt/homebrew/opt/openssl/lib

set -U fish_user_paths /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin $fish_user_paths

