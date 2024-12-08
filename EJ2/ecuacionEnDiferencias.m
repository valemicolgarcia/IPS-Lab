function y = ecuacionEnDiferencias (n,x)

    y = zeros(size(n));

    for i = 1:length(n)
        y(i) = x(i);

        if i > 8820
            y(i) = y(i) + 0.5 * x(i - 8820);
        end

        if i > 17640
            y(i) = y(i) + 0.25 * x(i - 17640);
        end
    end
end
