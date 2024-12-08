%Respuesta impulsional del sistema 1

function y = sistema1(n,x)
    y = zeros(size(n));
    for i = 1:length(n)
        if i == 1
            y(i) = 1/2 * x(i);
        else
            y(i) = 1/2 * x(i) + 1/2 * x(i - 1);
        end
    end
end
