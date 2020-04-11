class PagesController < ApplicationController
  def home
    @positions = [
      {
        position: "Benevolent Dictator",
        leader: "Steph Melo"
      },
      {
        position: "Minister of Computer",
        leader: "Alexander Profeit",
        deputy: "MUSKLES"
      },
      {
        position: "Minister of Injustice",
        leader: "Dorina Rusu"
      },
      {
        position: "Minister of Super Injustice",
        leader: "Celina friend of Profeit"
      },
      {
        position: "Minister of War",
        leader: "Yannis Fotiadis"
      },
      {
        position: "Minister of Sirens",
        leader: "Emily A-B"
      },
      {
        position: "Minister of Dirt",
        leader: "Jeff Houlton"
      },
      {
        position: "Minister of Fluids",
        leader: "Sheldon O'Neill"
      },
      {
        position: "Minister of Fittin' Dis",
        leader: "Derek Pawsey"
      },
      {
        position: "Minister of Killing Parties",
        leader: "Renée"
      },
      {
        position: "Director of Sexual Miseducation",
        leader: "Sheldon O'Neill"
      }
    ]
  end

  def thanks
  end
end
