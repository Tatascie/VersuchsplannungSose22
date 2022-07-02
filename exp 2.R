#Versuchsplanung 2

library(conf.design)

set.seet(123456)

faktoren = c("Neigungswinkel", "Startposition", "Orientierung", "Pappstreifen", "Murmel", "Untergrund")

# Neigungswinke: 0 -> 1 Legostein; 1 -> 2 Legosteine
# Startposition: 0 -> unteres Loch; 1 -> höheres Loch
# Orientierung: 0 -> Loch seitlich; 1 -> Loch oben
# Pappsteifen: 0 -> Murmel fallen lassen; 1 -> Pappstreifen verwenden
# Murmel: 0 -> Murmel A; 1 -> Murmel B (muss noch festgelegt werden)
# Untergrund: 0 -> Fußboden; 1 -> Plakat

#Blocks: 0 -> Tag 1; 1 -> Tag 2

plan = conf.design(c(rep(1, 6)), p = 2, treatment.names = sample(faktoren, 6))

random = c(sample(1:32, 32), sample(33:64, 32))

plan = plan[random, ]
rownames(plan) = 1:64
plan
