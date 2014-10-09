describe "eol-fixes::shellshock" do
  let(:chef_run) do
    stub_command("env foo='() { echo not patched; }' "\
                 "bash -c foo| grep patched").and_return(true)
    ChefSpec::Runner.new.converge(described_recipe)
  end

  it "includes default recipe" do
    expect(chef_run).to include_recipe "eol-fixes"
  end

  it "upgrades bash" do
    expect(chef_run).to upgrade_package "bash"
  end

  context "bash is fixed" do
    let(:chef_run) do
      stub_command("env foo='() { echo not patched; }' "\
                   "bash -c foo| grep patched").and_return(false)
      ChefSpec::Runner.new.converge(described_recipe)
    end

    it "upgrades bash" do
      expect(chef_run).to_not upgrade_package "bash"
    end
  end
end
