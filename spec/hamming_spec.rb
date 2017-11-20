require_relative '../lib/hamming'

RSpec.describe '../lib/hamming.rb' do
  describe '#compute' do
    it 'does test_empty_strands' do
      expect(Hamming.compute('', '')).to eq 0
    end

    it 'does test_identical_strands' do
      expect(Hamming.compute('A', 'A')).to eq 0
    end

    it 'does test_long_identical_strands' do
      expect(Hamming.compute('GGACTGA', 'GGACTGA')).to eq 0
    end

    it 'does test_complete_distance_in_single_nucleotide_strands' do
      expect(Hamming.compute('A', 'G')).to eq 1
    end

    it 'does test_complete_distance_in_small_strands' do
      expect(Hamming.compute('AG', 'CT')).to eq 2
    end

    it 'does test_small_distance_in_small_strands' do
      expect(Hamming.compute('AT', 'CT')).to eq 1
    end

    it 'does test_small_distance' do
      expect(Hamming.compute('GGACG', 'GGTCG')).to eq 1
    end

    it 'does test_small_distance_in_long_strands' do
      expect(Hamming.compute('ACCAGGG', 'ACTATGG')).to eq 2
    end

    it 'does test_non_unique_character_in_first_strand' do
      expect(Hamming.compute('AAG', 'AAA')).to eq 1
    end

    it 'does test_non_unique_character_in_second_strand' do
      expect(Hamming.compute('AAA', 'AAG')).to eq 1
    end

    it 'does test_same_nucleotides_in_different_positions' do
      expect(Hamming.compute('TAG', 'GAT')).to eq 2
    end

    it 'does test_large_distance' do
      expect(Hamming.compute('GATACA', 'GCATAA')).to eq 4
    end

    it 'does test_large_distance_in_off_by_one_strand' do
      expect(Hamming.compute('GGACGGATTCTG', 'AGGACGGATTCT')).to eq 9
    end

    it 'does test_disallow_first_strand_longer' do
      expect { Hamming.compute('AATG', 'AAA') }.to raise_error(ArgumentError)
    end

    it 'does test_disallow_second_strand_longer' do
      expect { Hamming.compute('ATA', 'AGTG') }.to raise_error(ArgumentError)
    end
  end
end
