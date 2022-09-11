require 'spec_helper'

describe Chars do
  it 'Recebe uma sequência e retorna a soma dos caracteres únicos' do
    sequence = 'abc abc ab ac aaaa b'

    expect(Chars.new.unique_quantity(sequence)).to eq(12)
  end

  it 'Recebe uma sequência e retorna a soma dos caracteres únicos' do
    sequence = 'abcx abcy abcx acx asdc b'

    expect(Chars.new.unique_quantity(sequence)).to eq(20)
  end

  it 'Recebe uma sequência e retorna a soma dos caracteres únicos' do
    sequence = 'qzbw qez xgedfibnyuhqsrazlwtpocj fxgpoqijdzybletckwaunsr'\
               'pwnqsizrfcbyljexgouatd ljtperqsodghnufiycxwabzw'

    expect(Chars.new.unique_quantity(sequence)).to eq(76)
  end

  it 'Recebe uma sequência e retorna a soma dos caracteres únicos' do
    sequence = 'vjdmhsorqw whdjoqvrms rhsjqdmov omdsqjrzhv rcxsgnluhtqey '\
               'ldejuqpykrtc rylcqxt wlgtzyrcf yrltc rclpyt frke kfe '\
               'nchvxtqarsejld rkhntaexcbqljod qhdepzrxljtifcan '\
               'uyfshgxzbqvrdwintjlmec oyrvdwtgeczsfbmluqih '\
               'kabdlqytwgfrhmuevczpsi guwmkrfyex fxekmrygwu wfgremukiyx '\
               'aywegkrmxufl wukygimrxfe mmmmm hbgnkqe khgn hngypzmd oixyanpdg '\
               'qbdklpvhjaeif kzaiglyjfpmeurn ynsm smjn nsyum mpcztqkydxifv '\
               'zdqfvxtmpcyk zkcmxfpqvydt yopktfnqrmvxdczw mdckxypvztqf va '\
               'bvhg fe ef n hpmqn n dn njxazhtevsmlir txmsijvaezwn '\
               'tezacmwsvinxj gvzpbmeijyhaukflcrdqw sivlhgumyzkdrjfeoxqtc '\
               'ouq h csxewy kxoscmw ucnvwsxg hfocysxmiwe wcsmx '\
               'retcxugsdwjnykm sfhudnxoqwjktyzarc rklvinxudpsbywtjc '\
               'cwfizpyguatbodsqemxrjknlv ujikxwsmntcloyqgaebrzfdvp'

    expect(Chars.new.unique_quantity(sequence)).to eq(637)
  end
end
