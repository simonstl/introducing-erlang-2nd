%% @author Simon St.Laurent <simonstl@simonstl.com> [http://simonstl.com]
%% @doc Functions calculating velocities achieved by objects
%% dropped in a vacuum.
%% @reference from <a href= "http://shop.oreilly.com/product/0636920025818.do" >
%% Introducing Erlang</a>,
%% O'Reilly Media, Inc., 2017.
%% @copyright 2017 by Simon St.Laurent
%% @version 0.1

-module(combined).
-export([height_to_mph/1]). 
-import(drop, [fall_velocity/1]).
-import(convert, [mps_to_mph/1]).

%% @doc Calculates the velocity of an object falling on Earth 
%% as if it was in a vacuum (no air resistance).  The distance is
%% the height from which the object falls, specified in meters,
%% and the function returns a velocity in miles per hour.

-spec(height_to_mph(number()) -> number()).

height_to_mph(Meters) -> mps_to_mph(fall_velocity(Meters)).
