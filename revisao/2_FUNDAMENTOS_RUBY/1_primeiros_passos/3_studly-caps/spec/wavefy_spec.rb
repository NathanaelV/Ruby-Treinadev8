require 'spec_helper'

describe StringUtils do
  it 'converte ruby on rails para rUbY On rAiLs' do
    expect(StringUtils.new.wavefy("ruby on rails")).to eq 'rUbY On rAiLs'
  end

  it 'converte Code Saga para cOdE SaGa' do
    expect(StringUtils.new.wavefy("Code Saga")).to eq 'cOdE SaGa'
  end

  it 'converte CampusCode para cAmPuScOdE' do
    expect(StringUtils.new.wavefy("CampusCode")).to eq 'cAmPuScOdE'
  end
end
