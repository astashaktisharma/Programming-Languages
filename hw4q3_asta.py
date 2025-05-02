# Fuel economy calculator

distance_unit = input("Please enter the units for distance: ")
fuel_unit = input("Please enter the units for fuel: ")

distance = float(input(f"\nPlease enter the number of {distance_unit} traveled: "))
fuel = float(input(f"Please enter the number of {fuel_unit} of fuel used: "))

fuel_economy = distance / fuel

print(f"\n{distance:.1f} {distance_unit} / {fuel:.1f} {fuel_unit} = "
      f"{fuel_economy:.2f} {distance_unit} per {fuel_unit}")
