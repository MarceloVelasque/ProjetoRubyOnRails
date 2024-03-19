# Regex 
# as expressões regulares são notações para elas servem para validar entradas de dados
# ou fazer busca e extração de informações em textos

# existem 3 maneiras de clicar um regex, usando o terminal irb os seguintes passos são 

#01 colocar entre // exemplo : /abdc/ 
#3.2.2 :001 > /abdc/
 #=> /abdc/ 
#3.2.2 :002 > /abdc/.class

#02 colocar %r{abdc}
#3.2.2 :003 > %r{abdc}
 #=> /abdc/ 
#3.2.2 :004 > %r{abdc}.class
 #=> Regexp 

 #03 chamar como regexp.new('expressao')
 #3.2.2 :007 > Regexp.new('expressao')
 #=> /expressao/ 
#3.2.2 :008 > Regexp.new('expressao').class
 #=> Regexp 
#3.2.2 :009 > 

#-------------------------------------------------------------------------------------------------


#máscara para cpf e validação
def validar_cpf(cpf)
    cpf.match?(/^\d{3}\.\d{3}\.\d{3}-\d{2}$/)
  end
  
  def mascara_cpf(cpf)
    return cpf unless validar_cpf(cpf)
  
    cpf.gsub!(/(\d{3})(\d{3})(\d{3})(\d{2})/, '\1.\2.\3-\4')
  end
  
  # Exemplo de uso:
  cpf = '12345678901'
  mascara_cpf(cpf)
  puts cpf  # Saída: '123.456.789-01'
  

  #-------------------------------------------------------------------------------------------------


  #máscara para cnpj e validação
  def validar_cnpj(cnpj)
    cnpj.match?(/^\d{2}\.\d{3}\.\d{3}\/\d{4}-\d{2}$/)
  end
  
  def mascara_cnpj(cnpj)
    return cnpj unless validar_cnpj(cnpj)
  
    cnpj.gsub!(/(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})/, '\1.\2.\3/\4-\5')
  end
  
  # Exemplo de uso:
  cnpj = '12345678000123'
  mascara_cnpj(cnpj)
  puts cnpj  # Saída: '12.345.678/0001-23'
  
  
  #-------------------------------------------------------------------------------------------------

  #máscara para telefone e validação:

  def validar_telefone(telefone)
    telefone.match?(/^\(\d{2}\) \d{4,5}-\d{4}$/)
  end
  
  def mascara_telefone(telefone)
    return telefone unless validar_telefone(telefone)
  
    telefone.gsub!(/(\d{2})(\d{4,5})(\d{4})/, '(\1) \2-\3')
  end
  
  # Exemplo de uso:
  telefone = '(11) 23456789'
  mascara_telefone(telefone)
  puts telefone  # Saída: '(11) 2345-6789'
  

  #-------------------------------------------------------------------------------------------------

  # máscara para rg e validação :

  def validar_rg(rg)
    rg.match?(/^\d{2}\.\d{3}\.\d{3}-\d{1}$/)
  end
  
  def mascara_rg(rg)
    return rg unless validar_rg(rg)
  
    rg.gsub!(/(\d{2})(\d{3})(\d{3})(\d{1})/, '\1.\2.\3-\4')
  end
  
  # Exemplo de uso:
  rg = '123456789'
  mascara_rg(rg)
  puts rg  # Saída: '12.345.678-9'
  

  #-------------------------------------------------------------------------------------------------

  #exemplo simples de como o match é usado para validar uma entrada de e-mail:

  def validar_email(email)
    pattern = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    email.match?(pattern)
  end
  
  email = 'usuario@email.com'
  if validar_email(email)
    puts 'E-mail válido!'
  else
    puts 'E-mail inválido!'
  end
  
  #-------------------------------------------------------------------------------------------------


# Em resumo, o método match é útil sempre que você precisar verificar se uma string está no formato correto
# ou se ela contém um padrão específico definido por uma expressão regular. Ele oferece uma maneira eficiente de lidar com validações
# e extrações de dados baseadas em padrões.
  

