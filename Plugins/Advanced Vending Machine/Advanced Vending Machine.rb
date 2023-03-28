def pbAdvancedVendingMachine(name, boughtVar, wonVar, items, discount = 0, multyBuy = false, minBuy = 1, maxBuy = 10)
    pbMessage(_INTL("Look! It's a Vending Machine!"))
    @input = name
    @itemsBought = boughtVar
    @itemsWon = wonVar
    @itemList = items
    @discount = (100 - discount).to_f / 100
    @multyBuy = multyBuy
    @multyBuyMin = minBuy
    @multyBuyMax = maxBuy
    pbMenu()
end

def pbMenu()
    @choice = pbMessage(_INTL("Which {1} would you like to buy?\\G", @input), 
    (0...@itemList.size).to_a.map{|i| 
      next _INTL("{1} - ${2}", GameData::Item.get(@itemList[i]).name, ((GameData::Item.get(@itemList[i]).price) * @discount).round)
    }, -1)
    return if 0 > @choice 
    @item = GameData::Item.get(@itemList[@choice]).name
    @items = GameData::Item.get(@itemList[@choice]).name_plural 
    @qty = @multyBuy ? quantity() : 1
    $game_variables[@itemsBought] += @qty
    @itemPrice = (((GameData::Item.get(@itemList[@choice]).price) * @discount).round) * @qty
    if $Trainer.money < @itemPrice
      pbMessage(_INTL("\\GYou don't have enough \\c[3]money\\c[0]!"))
      return
    end
    if !$PokemonBag.pbCanStore?(@itemList[@choice], @qty)
      pbMessage(_INTL("\\GYou have no room left in your Bag."))
      return
    end
    pbSEPlay("Mart buy item")
    $Trainer.money -= @itemPrice
    if @qty == 1
        pbMessage(_INTL("\\se[Vending machine sound]\\G{1} \\c[1]{2} \\c[0]dropped down!",letterChecker(), @item))
    else
        pbMessage(_INTL("\\se[Vending machine sound]\\G{1} \\c[1]{2} \\c[0]dropped down!",@qty, @items))
    end
    $PokemonBag.pbStoreItem(@itemList[@choice], @qty)
    return if @qty == 0
    bonus() if rand(1..10) == 5
    pbMenu()
end

def quantity()
    params = ChooseNumberParams.new
    params.setRange(@multyBuyMin, @multyBuyMax)
    params.setInitialValue(@multyBuyMin)
    params.setCancelValue(@multyBuyMin)
    return @qty = pbMessageChooseNumber(_INTL("\\GHow many {1} do you want to buy?", @item), params)
end

def letterChecker()
    if @item.starts_with_vowel?
        word = "An"
    elsif @item.last == "s" 
        word = "Some"
    else
        word = "A"
    end
end

def bonus()
    if $PokemonBag.pbCanStore?(@itemList[@choice])
        $PokemonBag.pbStoreItem(@itemList[@choice])
        start = @item.last == "s" ? "Some more" : "Another"
        pbMessage(_INTL("\\se[Vending machine sound]\\GBonus! {1} \\c[1]{2} \\c[0]dropped down!",start, @item))
        $game_variables[@itemsWon] += 1
    end
end