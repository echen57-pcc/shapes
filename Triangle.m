classdef Triangle
    properties
        length1 {mustBeNumeric, mustBePositive}
        length2 {mustBeNumeric, mustBePositive}
        length3 {mustBeNumeric, mustBePositive}
    end

    methods
        function obj = Triangle(length1, length2, length3)
            if nargin == 3 && ((length1 + length2) > length3) && ((length1 + length3) > length2) && ((length2 + length3) > length1) %Triangle equality check
                obj.length1 = length1;
                obj.length2 = length2;
                obj.length3 = length3;
            else
                error("Invalid input")
            end
        end

        function a = area(obj)
            p = (obj.length1 + obj.length2 + obj.length3)./2; %Heron's formula
            a = sqrt(p .* (p - obj.length1) .* (p - obj.length2) .* (p - obj.length3)); %Heron's formula
        end

        function p = perimeter(obj)
            p = (obj.length1 + obj.length2 + obj.length3)./2; %Heron's formula
        end
    end
end