describe "eol-fixes::default" do

  let(:chef_run) do
    ChefSpec::Runner.new.converge(described_recipe)
  end

  it "does not include yum" do
    expect(chef_run).to_not include_recipe "yum"
  end

  it "includes apt" do
    expect(chef_run).to include_recipe "apt"
  end

  context "centos" do
    let(:chef_run) do
      ChefSpec::Runner.new(platform: "centos", version: "6.4").
        converge("eol-fixes::default")
    end

    it "includes yum recipe" do
      expect(chef_run).to include_recipe "yum"
    end

    it "does not include apt" do
      expect(chef_run).to_not include_recipe "apt"
    end
  end
end
