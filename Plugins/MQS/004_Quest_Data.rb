module QuestModule
  
  # You don't actually need to add any information, but the respective fields in the UI will be blank or "???"
  # I included this here mostly as an example of what not to do, but also to show it's a thing that exists
  #---------------------------------------------------
  # STORY MODE/MAIN QUEST
  #---------------------------------------------------
  # Call: activateQuest(:Quest0, colorQuest("magenta"), true)
  # CallUpdate: advanceQuestToStage(:Quest0, 2, colorQuest("magenta"), true)
  #---------------------------------------------------
  #"blue"
  #"red"
  #"green"
  #"cyan"
  #"magenta"
  #"yellow"
  #"gray"
  #"white"
  #"purple"
  #"orange"
  #---------------------------------------------------
  Quest0 = {
    :ID => "0",
    :Name => "Chapter 1: Where it all began...",
    :QuestGiver => "Me, duh",
    #
    :Stage1 => "Find the Landing Zone!",
    :Location1 => "Docking Bay | Landing Zone",
    #
    :Stage2 => "Find Brother's GF!",
    :Location2 => "Theta Capital View",
    #
    :Stage3 => "Find the Landing Zone!",
    :Location3 => "Docking Bay | Landing Zone",
    #
    :Stage4 => "Follow Brother!",
    :Location4 => "Crestelia City | Docking Bay",
    #
    :Stage5 => "Explore and Find the PKMN center!",
    :Location5 => "Crestelia City | Teal Region",
    #
    :Stage6 => "Find the Tournament building!",
    :Location6 => "Crestelia City | Crimson Region",
    #
    :Stage7 => "Go on the Biovator!",
    :Location7 => "Crestelia City | Middle Region",
    #
    :Stage8 => "Enter the Castle!",
    :Location8 => "Crestelia City | Middle Region",
    #
    :Stage9 => "I",
    :Stage10 => "J",
    :Stage11 => "K",
    :Stage12 => "L",
    #
    :QuestDescription => "What a normal life, a beautiful day... Better know whats going on!",
    :RewardString => "Chapter ?: ???"
  }

  Quest1 = {
  }
  
  Quest2 = {
  }
  
  Quest3 = {
  }
  
  Quest4 = {
  }
  
  Quest5 = {
  }
  
  Quest6 = {
  }
  
  Quest7 = {
  }
  
  Quest8 = {
    :ID => "8",
    :Name => "The lost Amulet",
    :QuestGiver => "Alt",
    :Stage1 => "Find the 3 parts of the Amulet",
    :Location1 => "Somewhere in the cave...",
    :QuestDescription => "Alt lost his Amulet somewhere in the cave... Pretty much reasonable..."
  }
  
  Quest9 = {
    :ID => "9",
    :Name => "Got any grapes?",
    :QuestGiver => "Duck",
    :Stage1 => "Listen to The Duck Song.",
    :Stage2 => "Try not to sing it all day.",
    :Location1 => "YouTube",
    :QuestDescription => "Let's try to revive old memes by listening to this funny song about a duck wanting grapes.",
    :RewardString => "A loss of braincells. Hurray!"
  }
  
  Quest10 = {
    :ID => "10",
    :Name => "Singing in the rain",
    :QuestGiver => "Some old dude",
    :Stage1 => "I've run out of things to write.",
    :Stage2 => "If you're reading this, I hope you have a great day!",
    :Location1 => "Somewhere prone to rain?",
    :QuestDescription => "Whatever you want it to be.",
    :RewardString => "Wet clothes."
  }
  
  Quest11 = {
    :ID => "11",
    :Name => "When is this list going to end?",
    :QuestGiver => "Me",
    :Stage1 => "When IS this list going to end?",
    :Stage2 => "123",
    :Stage3 => "456",
    :Stage4 => "789",
    :QuestDescription => "I'm losing my sanity.",
    :RewardString => "nil"
  }
  
  Quest12 = {
    :ID => "12",
    :Name => "The laaast melon",
    :QuestGiver => "Some stupid dodo",
    :Stage1 => "Fight for the last of the food.",
    :Stage2 => "Don't die.",
    :Location1 => "A volcano/cliff thing?",
    :Location2 => "Good advice for life.",
    :QuestDescription => "Tea and biscuits, anyone?",
    :RewardString => "Food, glorious food!"
  }

end
