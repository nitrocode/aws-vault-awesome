cask "aws-vault-awesome" do
  version "6.3.1-awesome"

  if Hardware::CPU.intel?
    sha256 "7e264c5a07c3aa2e52ada81ed2b785181446ade2f2a2df82594484e2b1828fe8"
    url "https://github.com/nitrocode/aws-vault-awesome/releases/download/v#{version}/aws-vault-awesome_{version}-awesome_Darwin_x86_64"
  else
    sha256 "d3efd8f0a3b6d16e99f127673d568854a3df1db6bf72d7df740e8f5bf5ab31a2"
    url "https://github.com/nitrocode/aws-vault-awesome/releases/download/v#{version}/aws-vault-awesome_{version}-awesome_Darwin_arm64"
  end

  name "aws-vault-awesome"
  desc "Securely stores and accesses AWS credentials in a development environment"
  homepage "https://github.com/nitrocode/aws-vault-awesome/aws-vault-awesome"

  binary "aws-vault-awesome"
end
