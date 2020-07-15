class Transaction

  def initialize(credit: nil) 

    @credit = credit
  end

  def display
    "01/07/2020||#{@credit} || || "
  end


end