RecipeViewerEvents.removeEntries('item', event => {
  const itemsToHide = [
    'easy_villagers:farmer',
    'easy_villagers:breeder',
    'easy_villagers:converter',
    'easy_villagers:iron_farm',
    'easy_villagers:incubator',
    'easy_villagers:inventory_viewer'
  ]

  event.remove(itemsToHide)
})
