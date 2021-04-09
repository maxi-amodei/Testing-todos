class User
  def initialize(email)
    @email = email
  end

  def todos
    Todo.where(email: @email)
    #Esto ya te trae una instancia de todo para aplicarle el create
  end

  def signed_in?
    @email.present?
  end

end