cask "clusterawsadm" do
  version "0.7.0"
 
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kubernetes-sigs/cluster-api-provider-aws/releases/download/v#{version}/clusterawsadm-darwin-amd64"
    sha256 "9dbf25637168e142dea0a0e55afd345a227d0b4bae73a2f39893024df7c0f445"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kubernetes-sigs/cluster-api-provider-aws/releases/download/v#{version}/clusterawsadm-darwin-amd64"
    sha256 "9dbf25637168e142dea0a0e55afd345a227d0b4bae73a2f39893024df7c0f445"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kubernetes-sigs/cluster-api-provider-aws/releases/download/v#{version}/clusterawsadm-linux-amd64"
    sha256 "9dbf25637168e142dea0a0e55afd345a227d0b4bae73a2f39893024df7c0f445"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kubernetes-sigs/cluster-api-provider-aws/releases/download/v#{version}/clusterawsadm-linux-arm64"
    sha256 "9dbf25637168e142dea0a0e55afd345a227d0b4bae73a2f39893024df7c0f445"
  end

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
  
  name "clusterawsadm"
  desc "Kubernetes Cluster API Provider AWS provides consistent deployment and day 2 operations of self-managed and EKS Kubernetes clusters on AWS."
  homepage "http://cluster-api-aws.sigs.k8s.io/"
  
  app: clusterawsadm
#  binary "clusterawsadm-darwin-amd64", target: "clusterawsadm"
end
