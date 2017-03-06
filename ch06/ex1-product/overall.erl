-module(overall).
-export([product/1]). 

product([]) -> 0; % in case the list is empty
product(List) -> product(List,1).

product([], Product) -> Product;

product([Head|Tail], Product) -> product(Tail, Product * Head).
