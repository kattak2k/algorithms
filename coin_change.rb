class Change
  def change(amount)
    available_coins = [100, 50, 25, 10, 5, 1]
    coins = []
    remaining_amount = amount
    available_coins.each do |coin|
      next unless (remaining_amount / coin).to_i > 0

      (remaining_amount / coin).to_i.times do
        coins << coin
      end
    end
    coins
  end
end


# Fastest solution
def coin_change(coins, amount)
  dp = Array.new(amount + 1, -1)
  dp[0] = 0

  coins.each do |c|
    puts "dp: #{dp}"
    1.upto(amount) do |i|
      next if i < c || dp[i - c] == -1

      dp[i] = dp[i - c] + 1 if dp[i] == -1 || dp[i - c] + 1 < dp[i]
      puts "\ti: #{i} dp: #{dp} dp[i - c]: #{dp[i - c]}"
    end
  end

  dp[amount]
end

describe Change do
  it 'returns [1] for 1' do
    expect(subject.change(1)).to eq [1]
  end

  it 'returns [1, 1, 1, 1] for 4' do
    expect(subject.change(4)).to eq [1, 1, 1, 1]
  end

  it 'returns [5, 1] for 6' do
    expect(subject.change(6)).to eq [5, 1]
  end

  it 'returns [25, 10, 10, 1, 1, 1] for 48' do
    expect(subject.change(48)).to eq [25, 10, 10, 1, 1, 1]
  end

  it 'returns [100, 25, 10, 5, 1, 1] for 142' do
    expect(subject.change(142)).to eq [100, 25, 10, 5, 1, 1]
  end

  it 'returns [100,100,50,25,10,1] for 286' do
    expect(subject.change(286)).to eq [100, 100, 50, 25, 10, 1]
  end
end
