function y =filtroDe1Rama(n,x)
    y = zeros(size(n));  % Inicializar la señal de salida

    for i = 1:length(n)
        y(i) = x(i);

        if i > 8820
            y(i) = y(i) - 0.5 * x(i - 8820);
        end
    end
end
