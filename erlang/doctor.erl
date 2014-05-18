%% ---
%%  Excerpted from "Seven Languages in Seven Weeks",
%%  published by The Pragmatic Bookshelf.
%%  Copyrights apply to this code. It may not be used to create training material, 
%%  courses, books, articles, and the like. Contact us if you are in doubt.
%%  We make no guarantees that this code is fit for any purpose. 
%%  Visit http://www.pragmaticprogrammer.com/titles/btlang for more book information.
%%---

%% modified for Day3 task - KR

-module(doctor).
-export([loop/0]).
loop() ->
    process_flag(trap_exit, true), 
    receive
        new ->
            io:format("Creating and mocnitoring process.~n"),
            register(translator, spawn_link(fun translate_service:loop/0)),
            loop();
        {'EXIT', From, Reason} -> 
            io:format("The service ~p died with reason ~p.", [From, Reason]),
			io:format(" Restarting. ~n"),
            self() ! new, 
            loop()
        end.

% to test:
% c(translate_service).
% c(doctor).
% Doc = spawn(fun doctor:loop/0).
% Doc ! new.
% translate_service:translate(translator, "casa").
% translate_service:translate(translator, "die").