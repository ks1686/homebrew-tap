cask "gpm" do
  version "0.1.0"

  on_arm do
    url "https://github.com/ks1686/gpm/releases/download/v#{version}/gpm_#{version}_darwin_arm64.tar.gz"
    sha256 "26532f11f91f29c0b94f62d4819f7727754b79699cfb19a354aaaec6fb4da017"
  end
  on_intel do
    url "https://github.com/ks1686/gpm/releases/download/v#{version}/gpm_#{version}_darwin_amd64.tar.gz"
    sha256 "dd15cae8a48685aea96208e4554a756576ae555ea0f745d931094d71fcf13b0c"
  end

  name "gpm"
  desc "Track, sync, and reproduce your software environment across Linux, macOS, and WSL2."
  homepage "https://github.com/ks1686/gpm"

  binary "gpm"
end