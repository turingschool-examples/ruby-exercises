require_relative 'pipe'

describe Pipe do
  pipe = Pipe.new
  it 'should be a Pipe' do
   expect(pipe).to be_a(Pipe)
  end

  it "should be unlit" do
    expect(@lit).to be_falsey
  end

  it "should have no tobacco" do
    expect(pipe.tobacco_left?).to be_falsey
  end

  it "no one should be puffing on the pipe" do
    expect(@puffing).to be_falsey
  end

  describe "lighting the pipe" do
    it "without tobacco it won't light" do
      expect(pipe.light).to be_falsey
    end
  end

  describe ".fill up the pipe" do
    it "fills the pipe with tobacco" do
    expect{ pipe.fill }.to change(pipe, :tobacco_left?).from(false).to(true)
    end
  end

  describe ".puffing on the pipe" do
    it "starts puffing on the pipe" do
      pipe.puffing
      expect(:puffing).to be_truthy
    end
  end

  describe ".light up the pipe" do
    it "lights the pipe" do
      pipe.light
      expect(:light).to be_truthy
    end
  end

  describe "Blowing a .smokering" do
    it "blows a smokering" do
      pipe.smokering
      expect(:smokering). to be_truthy
    end
  end

  describe "Lighting and blowing smoke rings uses up tobacco" do
    it "runs out of tobacco" do
      pipe.fill
      5.times{pipe.smokering}
      expect(pipe.tobacco_left?).to be_falsey
    end
  end

end
