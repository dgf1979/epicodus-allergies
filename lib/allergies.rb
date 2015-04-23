class Fixnum
  #method to return a list of allergies derived from a bit field
  define_method(:score) do
    allergy_list = []
    allergy_value = self
    return_String = ""

    if allergy_value >= 1 && allergy_value <= 255
      #cats
      if allergy_value >= 128
        allergy_list.push("cats")
        allergy_value -= 128
      end
      #eggs
      if allergy_value >= 64
        allergy_list.push("eggs")
        allergy_value -= 64
      end
      #chocolate
      if allergy_value >= 32
        allergy_list.push("chocolate")
        allergy_value -= 32
      end
      #tomatoes
      if allergy_value >= 16
        allergy_list.push("tomatoes")
        allergy_value -= 16
      end
      #strawberries
      if allergy_value >= 8
        allergy_list.push("strawberries")
        allergy_value -= 8
      end
      #shellfish
      if allergy_value >= 4
        allergy_list.push("shellfish")
        allergy_value -= 4
      end
      #peanuts
      if allergy_value >= 2
        allergy_list.push("peanuts")
        allergy_value -= 2
      end
      #eggs
      if allergy_value >= 1
        allergy_list.push("eggs")
        allergy_value -= 1
      end

      return_String = allergy_list.join(", ")
    else
      return_String = "Allergy score number must be between 1 and 255"
    end

    return_String

  end
end
