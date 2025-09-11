set -x GRPC_PYTHON_BUILD_SYSTEM_OPENSSL 1
set -x GRPC_PYTHON_BUILD_SYSTEM_ZLIB 1
set -x CFLAGS -I/opt/homebrew/opt/openssl/include
set -x LDFLAGS -L/opt/homebrew/opt/openssl/lib

set -U fish_user_paths /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin $fish_user_paths

# Set the Go workspace
set -gx GOPATH "$HOME/go"

# For Homebrew on macOS
# The `brew --prefix` command finds the correct installation path
fish_add_path (brew --prefix go)/libexec/bin

# Add binaries installed via `go install` to the PATH
fish_add_path "$GOPATH/bin"
