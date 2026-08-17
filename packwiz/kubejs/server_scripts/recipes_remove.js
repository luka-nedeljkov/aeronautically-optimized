const byOutput = [
    'easy_villagers:auto_trader',
    'easy_villagers:farmer',
    'easy_villagers:breeder',
    'easy_villagers:converter',
    'easy_villagers:iron_farm',
    'easy_villagers:incubator',
    'easy_villagers:inventory_viewer'
]

ServerEvents.recipes(event => {
    byOutput.forEach(item => event.remove({ output: item }));
});
