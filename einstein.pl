inimesed(Majad):-
    length(Majad, 5),
    Majad = [
        % 9. Esimeses majas elab norrakas:
        isik(norrakas, _, _, _, _),
        isik(_, _, _, _, _),
        % 8. Keskmises majas elav inimene joob piima:
        isik(_, _, piim, _, _),
        isik(_, _, _, _, _),
        isik(_, _, _, _, _)
    ],
    % 1. Inglane elab punases majas:
    member(isik(inglane, punane, _, _, _), Majad),
    % 2. Rootslase lemmikloom on koer:
    member(isik(rootslane, _, _, _, koer), Majad),
    % 3. Taanlane joob teed:
    member(isik(taanlane, _, tee, _, _), Majad),


    % 4. Roheline maja on valge maja kõrval vasakul:
    vasakul( isik(_, roheline, _, _, _),
    isik(_, valge, _, _, _), Majad ),


    % 5. Rohelise maja omanik joob kohvi:
    member(isik(_, roheline, kohvi, _, _), Majad),
    % 6. Pall Malli sigarette suitsetav majaomanik peab linde:
    member(isik(_, _, _, pall_mall, linnud), Majad),
    % 7. Kollase maja omanik suitsetab Dunhilli:
    member(isik(_, kollane, _, dunhill, _), Majad),


    % 10. Blendsi sigarette suitsetav majaomanik elab selle kõrval,
        % kes peab kassi:
    k6rval( isik(_, _, _, blends, _),
        isik(_, _, _, _, kass), Majad ),
    % 11. Hobust pidav inimene elab selle kõrval, kes suitsetab Dunhilli:
    k6rval( isik(_, _, _, _, hobune),
        isik(_, _, _, dunhill, _), Majad ),


    % 12. Bluemastersi sigarette suitsetav majaomanik joob õlut:
    member(isik(_, _, õlu, bluemasters, _), Majad),
    % 13. Sakslane suitsetab Prince'i:
    member(isik(sakslane, _, _, prince, _), Majad),

    % 14. Norrakas elab sinise maja kõrval:
    k6rval( isik(norrakas, _, _, _, _),
        isik(_, sinine, _, _, _), Majad ),
    % 15. Blendsi sigarette suitsetav majaomanik elab selle kõrval,
        % kes joob vett:
    k6rval( isik(_, _, _, blends, _),
        isik(_, _, vesi, _, _), Majad ),


    % Kellelgi on kuldkala:
    member(isik(_, _, _, _, kuldkala), Majad).


k6rval(A, B, Majad) :-
    append(_, [A,B|_], Majad);
    append(_, [B,A|_], Majad).


vasakul(Vasak, Parem, Majad):-
    append(_, [Vasak, Parem|_], Majad).


kuldkala(Rahvus):-
    inimesed(Majad),
    member(isik(Rahvus, _, _, _, kuldkala), Majad).