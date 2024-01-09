{ pkgs }: {
  deps = [
    pkgs.rubyPackages_3_1.rspec-core
    pkgs.ruby_3_1
    pkgs.rubyPackages_3_1.solargraph
  ];
}
#{ pkgs }: {
#  deps = [
#    pkgs.rubyPackages_3_0.rspec-core
#    pkgs.rubyPackages.rspec-core
#    pkgs.bash
#    pkgs.bundle install
#    pkgs.rubyPackages_3_1.rspec-core
#    pkgs.zammad
#    pkgs.ruby_3_1
#    pkgs.rubyPackages_3_1.solargraph
#  ];
#}