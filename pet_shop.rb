# for if need to return, if changes data dont need to return
# if it creates then you do

def pet_shop_name(petshop)
  return petshop[:name]
end

def total_cash(petshop)
  sum = petshop[:admin][:total_cash]
end

def add_or_remove_cash(petshop, amount)
  total_cash = petshop[:admin][:total_cash] -= amount
  return total_cash
end

def add_or_remove_cash(petshop, amount)
  total_cash = petshop[:admin][:total_cash] += amount
  return total_cash
end

def pets_sold(petshop)
  sold = petshop[:admin][:pets_sold]
end

def increase_pets_sold(petshop, amount)
  sold = petshop[:admin][:pets_sold] += amount
end

def stock_count(petshop)
  count = petshop[:pets].length
end

def pets_by_breed(petshop, name)
  pets_by_breed = []

  for iteration in petshop[:pets]
      if iteration[:breed] == name
        pets_by_breed << iteration
      end
    end

  return pets_by_breed

end
#
# def pets_by_breed(petshop, name)
#   pets_by_breed = {}
#
#   for pets in petshop
#     if petshop[:pets] == name
#       pets_by_breed.push(pets)
#     end
#   end
#   return pets_by_breed
#
# end
#
# def find_pet_by_name(petshop, pets)
#   for pets in petshop
#     if petshop[:pets][0][:breed].include?(pets)
#       return pets
#     end
#   end
# end

# def pets_by_breed(petshop, name)
#   pets_by_breed = []
#
#   petshop[:pets].each do |key, value|
#     if values[0][:breed] == name
#       pets_by_breed << name
#     end
#   end
# return pets_by_breed
#
# end

# def pets_by_breed(petshop, name)
#   pets_by_breed = []
#   petshop[:pets].each do |x, y|
#     if y[0][:breed] == name
#       pets_by_breed << name
#     end
#   end
#   return pets_by_breed
# end

def find_pet_by_name(petshop, name)

  for iteration in petshop[:pets]
      if iteration[:name] == name
        return iteration
      end
    end
end


def find_pet_by_name_returns__nil(petshop, name)

  for iteration in petshop[:pets]
      if iteration[:name] != name
        return nil?
      end
    end
end

def add_pet_to_stock(petshop, newpet)
  petshop[:pets].push(newpet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  customer[:pets].length
end

def add_pet_to_customer(customer, newpet)
  customer[:pets].push(newpet)
end

def customer_can_afford_pet(customer, newpet)
  case
  when customer[:cash] >= newpet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(petshop, pet, customer)
  petshop(pet).push(customer)
end
