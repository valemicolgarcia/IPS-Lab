function y  = filtroDe3Ramas (n,x)

    y = zeros(size(n));  % Inicializar la señal de salida

    for i = 1:length(n)
        y(i) = x(i);

        if i > 8820
            y(i) = y(i) - 0.5 * x(i - 8820);
        end

        if i > 26460
            y(i) = y(i) + 0.125 * x(i - 26460);
        end

        if i > 35280
            y(i) = y(i) - 0.0625 * x(i - 35280);
        end
    end
end
