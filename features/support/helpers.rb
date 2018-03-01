module MyData
  def generate_email
    [*('a'..'z')].sample(10).join + '@youse.com.br'
  end

  def cpf
    [
      '123.456.718-07', '123.456.719-98', '123.456.797-00',
      '123.456.796-20', '123.456.798-91', '123.456.794-68',
      '123.456.793-87', '123.456.725-36', '123.456.726-17',
      '123.456.727-06', '123.456.728-89', '123.456.729-60',
      '123.456.730-01', '123.456.731-84', '123.456.732-65',
      '123.456.733-46', '123.456.734-27', '123.456.735-08',
      '123.456.736-99', '123.456.737-70', '123.456.738-50',
      '123.456.739-31', '123.456.740-75', '123.456.741-56',
      '123.456.742-37', '123.456.743-18', '123.456.744-07',
      '123.456.745-80', '123.456.746-60', '123.456.747-41',
      '123.456.748-22', '123.456.749-03', '123.456.750-47',
      '123.456.751-28', '123.456.752-09', '123.456.753-90',
      '123.456.754-70', '123.456.755-51', '123.456.756-32',
      '123.456.757-13', '123.456.758-02', '123.456.759-85',
      '123.456.760-19', '123.456.761-08', '123.456.762-80',
      '123.456.763-61', '123.456.764-42', '123.456.765-23',
      '123.456.766-04', '123.456.767-95', '123.456.768-76',
      '123.456.769-57', '123.456.770-90', '123.456.771-71',
      '123.456.772-52', '123.456.773-33', '123.456.774-14',
      '123.456.775-03', '123.456.776-86', '123.456.777-67',
      '123.456.778-48', '123.456.779-29', '123.456.780-62',
      '123.456.781-43', '123.456.782-24', '123.456.783-05',
      '123.456.784-96', '123.456.785-77', '123.456.786-58',
      '123.456.787-39', '123.456.788-10', '123.456.792-04',
      '123.456.790-34', '123.456.791-15', '123.456.795-49'
    ].sample
  end

  def marital_status
    ['Solteiro(a)', 'Casado(a)', 'Divorciado(a)', 'Viúvo(a)'].sample
  end

  def gender
    ['Masculino', 'Feminino'].sample
  end

  def young_driver
    ['Desejo', 'Não desejo'].sample
  end

  def last_sinister
    [
      'nunca tive', 'tive há 9 anos', 'tive há 8 anos',
      'tive há 7 anos', 'tive há 6 anos', 'tive há 5 anos',
      'tive há 4 anos', 'tive há 3 anos', 'tive há 2 anos',
      'tive há 1 ano', 'tive há menos de um ano'
    ].sample
  end

  def income
    [
      'Até R$ 800,00', 'De R$ 800,01 a R$ 2.500,00', 'De R$ 2.500,01 a R$ 4.500,00',
      'De R$ 4.500,01 a R$ 7.000,00', 'Acima de R$ 7.000,00'
    ].sample
  end

  def month
    rand(1..12).to_s
  end

  def year
    next_year = Time.new.strftime('%y').to_i + 1
    rand(next_year..28).to_s
  end

  def cvv
    rand(100..999).to_s
  end

  def date_of_birth
    current_year = Time.new.strftime('%Y').to_i
    day = rand(1..31)
    month = rand(1..12)
    year = rand((current_year - 70)..(current_year - 16))
    if day < 10
      day = "0" + "#{day}"
    end
    if month < 10
      month = "0" + "#{month}"
    end
    if month.to_i % 2 == 0 & month.to_i <= 6 || month.to_i >= 9 & month.to_i % 2 == 1
      if month.to_i = 2 & day.to_i > 28
        day = 28
      elsif month.to_i = 2 & day.to_i >= 29 & year % 4 == 0
        day = 29
      end
      if day.to_i > 30
        day = 30
      end
    end
    day.to_s
    month.to_s
    date_of_birth = "#{day}/#{month}/#{year}"
  end

  def coverages
    c = [
      'Vale para perda total', 'Vale pra qualquer batida', 'Roubo e furto',
      'Danos materiais a terceiros', 'Danos corporais a terceiros', 'Acidentes de passageiros',
      'Acidentes de passageiros com despesas médicas e hospitalares'
    ]
    c.sample(c.length)
  end

  def assistances
    a = [
      'Assistência a automóvel', 'Chaveiro auto', 'Carro reserva', 'Vidros',
      'Faróis, lanternas e retrovisores', 'Motorista Youse', 'Lavagem e higienização',
      'Serviço de leva e traz', 'Restituição de IPVA', 'Serviço de histórico veicular',
      'Assistência a bike'
    ]
    a.sample(rand(1..a.length))
  end
end

DataMagic.add_translator MyData
