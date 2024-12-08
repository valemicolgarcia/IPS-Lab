%Respuesta impulsional del sistema 4

function y = sistema4(n,x)
    y = zeros(size(n));
    for i = 1:length(n)
        if i == 1
            y(i) = 1/4 * x(i);
        else
            y(i) = 1/4 * x(i) - 1/4 * x(i - 1) - 1/2 * y(i - 1);
        end
    end
end
