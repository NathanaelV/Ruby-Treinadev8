require 'spec_helper'

describe WindowCleaner do
  context '#clean' do
    it 'Limpa uma janela na coordenada indicada' do
      levels = 8
      windows_per_level = 4
      coordinates = <<~COORDINATES
        BTTDD
      COORDINATES

      result = WindowCleaner.new.clean(levels, windows_per_level, coordinates)

      expect(result).to eq 1
    end

    it 'Limpa uma janela na coordenada indicada' do
      levels = 64
      windows_per_level = 4
      coordinates = <<~COORDINATES
        BTTTTTDD
      COORDINATES

      result = WindowCleaner.new.clean(levels, windows_per_level, coordinates)

      expect(result).to eq 1
    end

    it 'Não limpa janela na coordenada indicada' do
      levels = 128
      windows_per_level = 8
      coordinates = <<~COORDINATES
        BTBTBBTEEE
      COORDINATES

      result = WindowCleaner.new.clean(levels, windows_per_level, coordinates)

      expect(result).to eq 0
    end

    it 'Limpa uma das janelas nas coordenadas indicadas' do
      levels = 128
      windows_per_level = 8
      coordinates = <<~COORDINATES
        BTTTBBTDDD
        BTBTBBTEEE
      COORDINATES

      result = WindowCleaner.new.clean(levels, windows_per_level, coordinates)

      expect(result).to eq 1
    end

    it 'Limpa duas das janelas nas coordenadas indicadas' do
      levels = 256
      windows_per_level = 16
      coordinates = <<~COORDINATES
        TBBTTBTTDEDD
        BBTBTBTTDEDE
        TTTBTBBTEEDE
        BTTBTBBBEEEE
      COORDINATES

      result = WindowCleaner.new.clean(levels, windows_per_level, coordinates)

      expect(result).to eq 2
    end

    it 'Limpa três das janelas nas coordenadas indicadas' do
      levels = 512
      windows_per_level = 32
      coordinates = <<~COORDINATES
        TBBTTBTTBDEDED
        BBTBTBTTBEDEDE
        TTTBTBBTTDEEDE
        BTTBTBBBBDEEEE
        BBTBTBTBTDEEDD
        BBBBTBTBBEEEDD
        BTBBTBTBBEDEDD
        BTTTTBTBBEDDDD
      COORDINATES

      result = WindowCleaner.new.clean(levels, windows_per_level, coordinates)

      expect(result).to eq 3
    end
  end
end
