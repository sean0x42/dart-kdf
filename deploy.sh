yum install -y wget glibc-common

wget https://github.com/rust-lang/mdBook/releases/download/v0.3.4/mdbook-v0.3.4-x86_64-unknown-linux-gnu.tar.gz

tar -xzf mdbook-v0.3.4-x86_64-unknown-linux-gnu.tar.gz

./mdbook build spec