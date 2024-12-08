
function graficarTFTD (X)
    figure;
    ds = 0.001;
    s = -0.5:ds:0.5;
    subplot(2,1,1);
    plot(s, abs(X)); % modulo
    xlabel("s");
    ylabel("|X(e^{j2πs})|");
    title("Módulo de TFTD");

    subplot(2,1,2);
    plot(s, angle(X)); % fase
    xlabel("s");
    ylabel("Φ ");
    title("Fase de TFTD");
end










