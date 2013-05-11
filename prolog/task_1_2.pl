% Make a knowledge base representing musicians and intruments.
% Also represent musicians and their genre of music.


instrument(guitar, slash).
instrument(guitar, hetfield).
instrument(guitar, santana).
instrument(guitar, murray).
instrument(trumpet, armstrong).
instrument(trumpet, davis).
instrument(macbook, skrillex).

genre(rock, slash).
genre(metal, hetfield).
genre(blues, santana).
genre(metal, murray).
genre(jazz, armstrong).
genre(jazz, davis).
genre(dubstep, skrillex).

% Find all musicians who play the guitar.
% run: instrument(guitar, Who).

% bonus
play(I, G) :- instrument(I, A), genre(G, A).

% what instrument use to play rock?
% play(I, rock).
% what genre uses guitar?
% play(guitar, G).
