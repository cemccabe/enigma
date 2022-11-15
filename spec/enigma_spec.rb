require './lib/enigma'

RSpec.describe Enigma do
  before :each do
    @enigma = Enigma.new
    @date = Time.now.strftime("%d%m%y").to_s.delete("/")
  end

  it 'exists' do
    expect(@enigma).to be_a(Enigma)
  end

  it 'encrypts a string' do
    expect(@enigma.encrypt("hello world", "02715", "040895")).to eq({
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    })
  end

  it 'makes a character set' do
    expect(@enigma.character_set).to be_a(Array)
    expect(@enigma.character_set).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
  end

  it 'makes a random key' do
    expect(@enigma.make_random_key).to be_a(String)
    expect(@enigma.make_random_key.length).to eq(5)
  end

  it 'formats the date to be used for offsets' do
    expect(@enigma.date_format).to eq(@date)
  end
end