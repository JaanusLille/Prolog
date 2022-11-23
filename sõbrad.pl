sõbrad(Is):-
    length(Is, 3),
    Is = [
        isik(ants, punane, _, _),
        isik(jüri, _, korvpall, _),
        isik(mati, _, _, _)
        ],
    member(isik(_, _, jalgpall, koer), Is),
    member(isik(_, roheline, _, kanaarilinnud), Is),
    member(isik(_, sinine, _, kana), Is),
    member(isik(_, _, tennis, _), Is).

tennise_mängija(Nimi):-
    sõbrad(Is),
    member(isik(Nimi, _, tennis, _), Is).