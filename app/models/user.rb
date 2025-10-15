class User < ApplicationRecord

  # 1. Validación de Presencia y Longitud (Requerida por los tests)
  validates :username, presence: true, length: { maximum: 15 }

  # 2. Validación de Formato (Requerida para rechazar "123123" y solo aceptar "abcd")
  # Esto asegura que solo se permitan letras del alfabeto.
  validates :username, format: { with: /\A[a-zA-Z]+\z/, message: "solo permite letras del alfabeto." }
    
    validates_presence_of :username, presence: true
    validates_format_of :username, :with => /\A[a-zA-Z]+\z/
    validates :username, length: { maximum: 15 },on: :create

    validates_presence_of :password, presence: true
    validates_length_of :password, is: 8

    validates_presence_of :email, presence: true
    validates_uniqueness_of :email
    validates_format_of :email, with: /@/
end
