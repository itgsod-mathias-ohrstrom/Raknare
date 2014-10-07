# encoding: UTF-8
require_relative '../lib/count'

describe 'count' do

    it 'should take start and stop as argument'  do
      expect { count() }.to raise_error ArgumentError
      expect { count(stop:5) }.to raise_error ArgumentError
      expect { count(start:1, stop:5) }.not_to raise_error
    end


    it '_should give 3,4,5 if start is 3 and stop is 5' do

      expect(count(start:3,stop:5)).to match "3,4,5"

    end

    it '_should give 2,1,0,-1,-2,-3,-4.-5 if start is 2 and stop is -5' do

      expect(count(start:2,stop:-5)).to eq "2,1,0,-1,-2,-3,-4,-5"

    end

    it '_should give 1 if start is 1 and stop is 1' do

      expect(count(start:1,stop:1)).to eq "1"

    end

end