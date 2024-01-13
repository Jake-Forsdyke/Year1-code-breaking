classdef List
% List: a class for singly linked lists
%
%   List           - (NIL)  the empty list, encoded as List( [] , [] )
%   List( x , L )  - (CONS) implements the constructor

    properties
        head  % the data item
        tail  % the rest of the list
    end

    methods
        % Constructor:  
        %   NIL  => List               
        %   CONS => List( head , tail )
        function l = List(x,k)
            if nargin == 0
                l.head = [];
                l.tail = [];
            else
                l.head = x;
                l.tail = k;
            end
        end
        
        % Check if list is empty (Nil)
        function b = isNil(l)
            b = isempty(l.tail);
        end
        
        % Compute the length of a list
        function n = length(l)
            n = 0;
            while ~l.isNil
                n = n+1;
                l = l.tail;
            end
        end
    end
end