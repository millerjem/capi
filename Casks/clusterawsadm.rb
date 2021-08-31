cask "clusterawsadm" do
  version "0.7.0"
  sha256 "9dbf25637168e142dea0a0e55afd345a227d0b4bae73a2f39893024df7c0f445"

  url "https://github.com/kubernetes-sigs/cluster-api-provider-aws/releases/download/v0.7.0/clusterawsadm-darwin-amd64"
  name "clusterawsadm"
  desc "A command-line tool to bootstrap Kubernetes clusters"
  homepage "https://cluster-api-aws.sigs.k8s.io/"

  binary "clusterawsadm-darwin-amd64", target: "clusterawsadm"

  depends_on macos: [
    :catalina,
    :big_sur,
  ]
  
  depends_on arch: :intel

  uninstall clusterawsadm: [
    ""
  ]
end
