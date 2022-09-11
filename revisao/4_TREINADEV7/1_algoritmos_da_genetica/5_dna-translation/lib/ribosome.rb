class Ribosome
  def translate(rna_messenger)
    rnat = rnam_to_rnat(rna_messenger)
    aminoacido = rnat_to_aminoacido(rnat)
    if aminoacido.split('-').join.length != rna_messenger.length
      return 'Translation aborted'
    end
  end

  
  private

  def rnam_to_rnat(rnam)
    rna_code = {'A'=>'U', 'U'=>'A', 'G'=>'C', 'C'=>'G'}
    rnam.gsub(/\w/, rna_code)
  end

  def rnat_to_aminoacido(rnat)
    rnat_code = {'UCA'=>'aa1-', 'AAC'=>'aa2-', 'UUU'=>'aa3-',
                 'AAA'=>'aa4-', 'AUC'=>'aa5-', 'CCA'=>'aa6-',
                 'GGU'=>'aa7-', 'GCC'=>'aa8-'}
    amino = rnat.gsub(/\w{3}/, rnat_code) # \w+ não funcionou
    amino[-1] = ''
    amino
  end
end
