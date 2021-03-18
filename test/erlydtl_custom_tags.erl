-module(erlydtl_custom_tags).

-export([custom1/1, custom2/2, custom3/2, custom4/1, custom1_var/2]).

custom1(_TagVars = []) ->
    <<"b1">>.

custom2([], _RenderOptions = [{locale, ru}, {foo, bar}]) ->
    <<"b2">>.

custom3([], _RenderOptions = [{locale, ru}]) ->
    <<"b3">>.

custom4(_TagVars = [<<"a">>]) ->
    <<"a">>.

custom1_var(_TagVars = [], _O) ->
[{name, <<"b1">>}, {count, 11}].
